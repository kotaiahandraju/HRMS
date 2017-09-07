package com.aurospaces.neighbourhood.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aurospaces.neighbourhood.bean.HolidayBean;
import com.aurospaces.neighbourhood.bean.LeavesBean;
import com.aurospaces.neighbourhood.bean.ProjectsBean;
import com.aurospaces.neighbourhood.bean.UsersBean;
import com.aurospaces.neighbourhood.db.dao.LeavesDao;
import com.aurospaces.neighbourhood.util.HRMSUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;

@Controller
public class LeavesController {
	private Logger logger = Logger.getLogger(LeavesController.class);
	@Autowired LeavesDao objLeavesDao;
	@RequestMapping(value = "/LeavesHome")
	public String HolidayHome(@ModelAttribute("leavesForm") LeavesBean objLeavesBean,ModelMap model,HttpServletRequest request,HttpSession session)  {
		
		System.out.println("HolidayHome page...");
		List<Map<String, String>> listOrderBeans = null;
		ObjectMapper objectMapper = null;
		String sJson=null;
		HRMSUtil hrmsUtils = new HRMSUtil();
		UsersBean userBean = hrmsUtils.getUserLoginSession(session);
		try{
			if(userBean != null){
			objLeavesBean.setEmloyeeId(userBean.getEmpId());
			}
			listOrderBeans = objLeavesDao.getleaves(objLeavesBean);
			 objectMapper = new ObjectMapper();
			if (listOrderBeans != null && listOrderBeans.size() > 0) {
				
				objectMapper = new ObjectMapper();
				sJson = objectMapper.writeValueAsString(listOrderBeans);
				request.setAttribute("allOrders1", sJson);
				// System.out.println(sJson);
			} else {
				objectMapper = new ObjectMapper();
				sJson = objectMapper.writeValueAsString(listOrderBeans);
				request.setAttribute("allOrders1", "''");
			}
		}catch(Exception e){
e.printStackTrace();
	System.out.println(e);
			logger.error(e);
			logger.fatal("error in userLogin method in school ProjectsController class DepartmentHome method  ");
			return "HolidayHome";
			
		}
		return "leavesHome";
	}
	@RequestMapping(value = "/addLeave")
	public @ResponseBody String addHoliday( @ModelAttribute("leavesForm") LeavesBean objLeavesBean,
			ModelMap model, HttpServletRequest request, HttpSession session, BindingResult objBindingResult)
					throws JsonGenerationException, JsonMappingException, IOException {
		System.out.println("HolidayHome page...");
		List<Map<String, String>> listOrderBeans = null;
		JSONObject jsonObj = new JSONObject();
		ObjectMapper objectMapper = null;
		String sJson = null;
		String message = null;
		HRMSUtil hrmsUtils = new HRMSUtil();
		try {
			if (objLeavesBean != null) {
				String s = objLeavesBean.getFromDate1();
				Date fromdate = HRMSUtil.dateFormate(objLeavesBean.getFromDate1());
				if (fromdate != null) {
					objLeavesBean.setFromDate(fromdate);
				}
				Date todate = HRMSUtil.dateFormate(objLeavesBean.getToDate1());
				if (todate != null) {
					objLeavesBean.setToDate(todate);
				}
			UsersBean userBean=	hrmsUtils.getUserLoginSession(session);
			if(userBean != null){
				objLeavesBean.setEmloyeeId(userBean.getEmpId());
			}
			objLeavesBean.setAccept(0);
				message = objLeavesDao.save(objLeavesBean);
				if(message.equals("insert")){
					 message= "Leave Created Successfully";
				 }
				 if(message.equals("updated")){
					 message= "Leave Updated Successfully";
				 }
				 if(message.equals("duplicate")){
					 message= "Leave Already Exist";
				 }
				jsonObj.put("message", message);

				listOrderBeans = objLeavesDao.getleaves(objLeavesBean);
				objectMapper = new ObjectMapper();
				if (listOrderBeans != null && listOrderBeans.size() > 0) {

					objectMapper = new ObjectMapper();
					sJson = objectMapper.writeValueAsString(listOrderBeans);
					request.setAttribute("allOrders1", sJson);
					jsonObj.put("allOrders1", listOrderBeans);
					// System.out.println(sJson);
				} else {
					objectMapper = new ObjectMapper();
					sJson = objectMapper.writeValueAsString(listOrderBeans);
					request.setAttribute("allOrders1", "''");
					jsonObj.put("message", listOrderBeans);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			logger.error(e);
			logger.fatal("error in userLogin method in school DepartmentController class DepartmentHome method  ");
			jsonObj.put("message", "excetption" + e);
			return String.valueOf(jsonObj);

		}
		return String.valueOf(jsonObj);
	}
	@RequestMapping(value = "/deleteLeave")
	public @ResponseBody String deleteHoliday(@ModelAttribute("leavesForm") LeavesBean objLeavesBean, ModelMap model,
			HttpServletRequest request, HttpSession session)
					throws JsonGenerationException, JsonMappingException, IOException {
		System.out.println("deleteHoliday page...");
		List<Map<String, String>> listOrderBeans = null;
		JSONObject jsonObj = new JSONObject();
		ObjectMapper objectMapper = null;
		String sJson = null;
		String message = null;
		boolean delete = false;
		String sessionUser = null;
		HRMSUtil hrmsUtil = null;
		try {
				if (objLeavesBean.getId() != 0) {
					delete = objLeavesDao.delete(objLeavesBean.getId());
					if (delete) {
						jsonObj.put("message", "delete successfully");
					} else {
						jsonObj.put("message", "delete fail");
					}
				}
				listOrderBeans = objLeavesDao.getleaves(objLeavesBean);
				objectMapper = new ObjectMapper();
				if (listOrderBeans != null && listOrderBeans.size() > 0) {

					objectMapper = new ObjectMapper();
					sJson = objectMapper.writeValueAsString(listOrderBeans);
					request.setAttribute("allOrders1", sJson);
					jsonObj.put("allOrders1", listOrderBeans);
					// System.out.println(sJson);
				} else {
					objectMapper = new ObjectMapper();
					sJson = objectMapper.writeValueAsString(listOrderBeans);
					request.setAttribute("allOrders1", "''");
					jsonObj.put("allOrders1", listOrderBeans);
				}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			logger.error(e);
			logger.fatal("error in userLogin method in school DepartmentController class DepartmentHome method  ");
			jsonObj.put("message", "excetption" + e);
			return String.valueOf(jsonObj);

		}
		return String.valueOf(jsonObj);
	}
}
