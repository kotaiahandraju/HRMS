package com.aurospaces.neighbourhood.db.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.aurospaces.neighbourhood.bean.LeavesBean;
import com.aurospaces.neighbourhood.daosupport.CustomConnection;
import com.aurospaces.neighbourhood.db.basedao.BaseLeaveDao;
import com.aurospaces.neighbourhood.db.callback.RowValueCallbackHandler;

@Repository(value = "leavesDao")
public class LeavesDao extends BaseLeaveDao {
	@Autowired CustomConnection custom;
	JdbcTemplate jdbcTemplate ;
	 
	public List<Map<String, String>> getleaves(LeavesBean objLeavesBean){
		jdbcTemplate = custom.getJdbcTemplate();
		StringBuffer buffer = new StringBuffer();
		buffer.append("select id,leaveType, DATE_FORMAT(fromDate, '%d-%M-%Y') as fromDate , DATE_FORMAT(toDate, '%d-%M-%Y') as toDate,employeeId,accept from  leaves ");
		if(objLeavesBean.getEmloyeeId() !=0){
			buffer.append(" WHERE employeeId= "+objLeavesBean.getEmloyeeId() );
		}
		String sql = buffer.toString();
		//System.out.println(sql);
		RowValueCallbackHandler handler = new RowValueCallbackHandler(new String[] {"id","leaveType" , "fromDate","toDate","employeeId","accept"});
		jdbcTemplate.query(sql, handler);
		List<Map<String, String>> result = handler.getResult();
		return result;
		
	}
	/*public List<Map<String, String>> getHolidaysforCalender(){
		jdbcTemplate = custom.getJdbcTemplate();
		String sql =" select name as title, Date(fromDate) as start,Date(toDate) as end  from leaves   " ;

		//System.out.println(sql);
		RowValueCallbackHandler handler = new RowValueCallbackHandler(new String[] {"title","start","end"});
		jdbcTemplate.query(sql, handler);
		List<Map<String, String>> result = handler.getResult();
		return result;
		
	}*/
	
}
