package com.aurospaces.neighbourhood.db.basedao;

import java.sql.Date;
import java.sql.Types;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.StoredProcedure;
import org.springframework.transaction.annotation.Transactional;

import com.aurospaces.neighbourhood.bean.LeavesBean;
import com.aurospaces.neighbourhood.daosupport.CustomConnection;

public class BaseLeaveDao {
	
	@Autowired CustomConnection custom;
	JdbcTemplate jdbcTemplate ;
	private LeavesSproc  sproc;

	public void setDataSource(DataSource source){
		jdbcTemplate = custom.getJdbcTemplate();
		this.sproc = new LeavesSproc(jdbcTemplate.getDataSource());
	}
	public String save(final LeavesBean objLeavesBean){
		jdbcTemplate = custom.getJdbcTemplate();
		 if(objLeavesBean.getCreatedTime() == null)
			{
			 long millis=System.currentTimeMillis();  
		        java.sql.Date date=new java.sql.Date(millis);  
		        objLeavesBean.setCreatedTime( date);
			}
			this.sproc = new LeavesSproc(jdbcTemplate.getDataSource());
			 Map<String,Object> res = sproc.execute(objLeavesBean.getId(),objLeavesBean.getCreatedTime(),objLeavesBean.getLeaveType() ,objLeavesBean.getFromDate(),
					 objLeavesBean.getToDate(),objLeavesBean.getEmloyeeId(),objLeavesBean.getAccept()
	                       ,objLeavesBean.getEmail(),objLeavesBean.getReason());
			System.out.println("result:"+res);
			return (String) res.get("result");
		}
		
		private class LeavesSproc extends StoredProcedure{
			private static final String SPROC_NAME = "leaves_sproc";
			public LeavesSproc( DataSource datasource ){
				super( datasource, SPROC_NAME );
				declareParameter( new SqlParameter( "inid", Types.INTEGER));
				declareParameter( new SqlParameter( "increatedtime", Types.TIMESTAMP));
				declareParameter( new SqlParameter( "inleaveType", Types.INTEGER));
				declareParameter( new SqlParameter( "infromdate", Types.DATE));
				declareParameter( new SqlParameter( "intodate", Types.DATE));
				declareParameter( new SqlParameter( "inemployeeid", Types.INTEGER));
				declareParameter( new SqlParameter( "inaccept", Types.INTEGER));
				declareParameter( new SqlParameter( "inemail", Types.VARCHAR));
				declareParameter( new SqlParameter( "inreason", Types.VARCHAR));
				declareParameter( new SqlOutParameter( "result", Types.VARCHAR));
				compile();
			}
			 public  Map<String,Object> execute(Integer inid,Date increatedtime,Integer inleaveType,Date infromdate,Date intodate,String inemployeeid,String inaccept,String inemail,String inreason){
				 Map<String,Object> results = super.execute(inid,increatedtime,inleaveType,infromdate,intodate,inemployeeid,inaccept,inemail,inreason);
				 return results;
			 }
			
		}
		@Transactional
		public boolean delete(int id) {
			jdbcTemplate = custom.getJdbcTemplate();
			boolean delete = false;
			try{
			String sql = "DELETE FROM leaves WHERE id=?";
			int intDelete=jdbcTemplate.update(sql, new Object[]{id});
			if(intDelete != 0){
				delete = true;
			}
			}catch(Exception e){
				e.printStackTrace();
			}
			return delete;
		}
		

	/* public DesignationBean getById(int id) {
			String sql = "SELECT * from designation where id = ? ";
			List<DesignationBean> retlist = jdbcTemplate.query(sql,
			new Object[]{id},
			ParameterizedBeanPropertyRowMapper.newInstance(DesignationBean.class));
			if(retlist.size() > 0)
				return retlist.get(0);
			return null;
		}*/
}
