
package com.aurospaces.neighbourhood.db.basedao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.transaction.annotation.Transactional;

import com.aurospaces.neighbourhood.bean.EmployeeCheckInBean;
import com.aurospaces.neighbourhood.daosupport.CustomConnection;


public class BaseEmployeeCheckInDao{
	@Autowired CustomConnection custom;
	JdbcTemplate jdbcTemplate ;

 

	public final String INSERT_SQL = "INSERT INTO employeecheckin( created_time, updated_time,checkIn, employeeId, active,status) values (?, ?, ?, ?,?,?)"; 




	/* this should be conditional based on whether the id is present or not */
	@Transactional
	public boolean save(final EmployeeCheckInBean objEmployeeCheckInBean) 
	{
		if(objEmployeeCheckInBean.getCheckOut() == null)
		{
		objEmployeeCheckInBean.setCheckOut( new Date());
		}
		java.sql.Timestamp checkOut = 
			new java.sql.Timestamp(objEmployeeCheckInBean.getCheckOut().getTime()); 
		jdbcTemplate = custom.getJdbcTemplate();
	if(objEmployeeCheckInBean.getId()== 0)	{

	KeyHolder keyHolder = new GeneratedKeyHolder();
	int update = jdbcTemplate.update(
			new PreparedStatementCreator() {
					public PreparedStatement 
					createPreparedStatement(Connection connection) throws SQLException {
	
					if(objEmployeeCheckInBean.getCreatedTime() == null)
					{
					objEmployeeCheckInBean.setCreatedTime( new Date());
					}
					java.sql.Timestamp createdTime = 
						new java.sql.Timestamp(objEmployeeCheckInBean.getCreatedTime().getTime()); 
							
					if(objEmployeeCheckInBean.getUpdateTime() == null)
					{
					objEmployeeCheckInBean.setUpdateTime( new Date());
					}
					java.sql.Timestamp updatedTime = 
						new java.sql.Timestamp(objEmployeeCheckInBean.getUpdateTime().getTime()); 
					
					
					
					if(objEmployeeCheckInBean.getCheckIn() == null)
					{
					objEmployeeCheckInBean.setCheckIn( new Date());
					}
					java.sql.Timestamp checkIn = 
						new java.sql.Timestamp(objEmployeeCheckInBean.getCheckIn().getTime()); 
					
							
					PreparedStatement ps =
									connection.prepareStatement(INSERT_SQL,new String[]{"id"});
	ps.setTimestamp(1, createdTime);
ps.setTimestamp(2, updatedTime);
ps.setTimestamp(3, checkIn);
ps.setInt(4, objEmployeeCheckInBean.getEmployeeId());
ps.setInt(5, objEmployeeCheckInBean.getActive());
ps.setString(6, "p");

							return ps;
						}
				},
				keyHolder);
				
				Number unId = keyHolder.getKey();
				objEmployeeCheckInBean.setId(unId.intValue());
				

		}
		else
		{

			String sql = "UPDATE employeecheckin  set employeeId = ? ,active = ?,checkOut =?  where id =? ";
	
			jdbcTemplate.update(sql, new Object[]{objEmployeeCheckInBean.getEmployeeId(),objEmployeeCheckInBean.getActive(),checkOut,objEmployeeCheckInBean.getId()});
		}
	return true;
	}
		
		@Transactional
		public boolean delete(int id) {
			jdbcTemplate = custom.getJdbcTemplate();
			boolean delete = false;
			try{
			String sql = "DELETE FROM employeecheckin WHERE id=?";
			int intDelete=jdbcTemplate.update(sql, new Object[]{id});
			if(intDelete != 0){
				delete = true;
			}
			}catch(Exception e){
				e.printStackTrace();
			}
			return delete;
		}
		

	 public List<EmployeeCheckInBean> getByEmployeeId(int id) {
		 jdbcTemplate = custom.getJdbcTemplate();
			String sql = " SELECT * from employeecheckin where employeeid = ?  and DATE(created_time) = DATE(Now()) order by updated_time desc limit 1 ";
			List<EmployeeCheckInBean> retlist = jdbcTemplate.query(sql,
			new Object[]{id},
			ParameterizedBeanPropertyRowMapper.newInstance(EmployeeCheckInBean.class));
			if(retlist.size() > 0)
				return  retlist;
			return null;
		}
	

}
