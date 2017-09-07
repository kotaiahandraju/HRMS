package com.aurospaces.neighbourhood.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.aurospaces.neighbourhood.bean.EmployeeBean;
import com.aurospaces.neighbourhood.bean.Proje;
import com.aurospaces.neighbourhood.bean.UsersBean;
import com.aurospaces.neighbourhood.db.dao.DepartmentDao;
import com.aurospaces.neighbourhood.db.dao.EmployeeDao;
import com.aurospaces.neighbourhood.util.HRMSUtil;
import com.aurospaces.neighbourhood.util.MiscUtils;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;

@Controller
public class EmployController {
	
	@Autowired EmployeeDao empDao;
	@Autowired DepartmentDao objDepartmentDao;
	private Logger logger = Logger.getLogger(EmployController.class);
	
	@RequestMapping(value = "/employeeHome")
	public String employeeHome(@ModelAttribute("packCmd") EmployeeBean empBean, ModelMap model,HttpServletRequest request) {
		System.out.println("in addEmployeeHome....");
		List<EmployeeBean> listOfEmplyees = null;
		ObjectMapper objectMapper = null;
		String sJson = "";
		String baseUrl = MiscUtils.getBaseUrl(request);
		try{
			int newId = empDao.getNewEmpId();
			empBean.setEmp_id(newId);
			listOfEmplyees = empDao.getallEmployeeDetails(0, null, null, null);
			if(listOfEmplyees != null && listOfEmplyees.size() > 0) {
				for(EmployeeBean employeeBean:listOfEmplyees){
					/* prev_emp_id is used in SP to update child tables experience,education,dependents*/
					employeeBean.setPrev_emp_id(employeeBean.getEmp_id());
					employeeBean.setExperienceDetails(empDao.getallExperienceDetails(employeeBean.getEmp_id()));
					employeeBean.setEducationDetails(empDao.getallEducationDetails(employeeBean.getEmp_id()));
					employeeBean.setDependentDetails(empDao.getallDependentDetails(employeeBean.getEmp_id()));
				}
				  objectMapper = new ObjectMapper(); 
				  sJson =objectMapper.writeValueAsString(listOfEmplyees);
				  request.setAttribute("allOrders1", sJson);
				  request.setAttribute("baseUrl", baseUrl);
				 // System.out.println(sJson); 
			}else{
				objectMapper = new ObjectMapper(); 
				sJson =objectMapper.writeValueAsString(listOfEmplyees);
				request.setAttribute("allOrders1", "''");
			}
			request.setAttribute("message", "");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
			logger.error(e);
			logger.fatal("error in addEmployeeHome method in EmployController class");
		}
		return "employeeHome";
	}
	
	@RequestMapping(value = "/getEmployeesList")
	public @ResponseBody String getEmployeesList(@Valid @ModelAttribute("packCmd") EmployeeBean empBean,
											ModelMap model, HttpServletRequest request, HttpSession session ,BindingResult result1)
														throws JsonGenerationException, JsonMappingException, IOException {
		JSONObject jsonObj = new JSONObject();
		List<EmployeeBean> listOfEmplyees = null;
		try{
			
			listOfEmplyees = empDao.getallEmployeeDetails(empBean);
			if(listOfEmplyees != null && listOfEmplyees.size() > 0) {
				for(EmployeeBean employeeBean:listOfEmplyees){
					/* prev_emp_id is used in SP to update child tables experience,education,dependents*/
					employeeBean.setPrev_emp_id(employeeBean.getEmp_id());
					employeeBean.setExperienceDetails(empDao.getallExperienceDetails(employeeBean.getEmp_id()));
					employeeBean.setEducationDetails(empDao.getallEducationDetails(employeeBean.getEmp_id()));
					employeeBean.setDependentDetails(empDao.getallDependentDetails(employeeBean.getEmp_id()));
				}
				jsonObj.put("empList", listOfEmplyees);
			}else{
				jsonObj.put("empList", "");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			logger.error(e);
			logger.fatal("error in  getEmployeesList method in EmployController");
			jsonObj.put("message", "Something went wrong!! Please try again.");

		}
		return String.valueOf(jsonObj);
	}
		
	
	@RequestMapping(value = "/addEmployee")
	public String addEmployee(@ModelAttribute("packCmd") EmployeeBean empBean, ModelMap model, RedirectAttributes redirectAttributes,
			@RequestParam String[] pprevComp,@RequestParam String[] pprevJob,@RequestParam String[] pprevFromDate,@RequestParam String[] pprevToDate,@RequestParam String[] pprevJobDesc, 
			@RequestParam String[] school_name,@RequestParam String[] qualification,@RequestParam String[] qualified_in,@RequestParam String[] sch_completion_date,
			@RequestParam String[] add_notes,@RequestParam String[] interests,
			@RequestParam String[] dependent_name,@RequestParam String[] dependent_relation,@RequestParam String[] dependent_dob,
			HttpServletRequest request,HttpSession session)  {
		try{
			
			
			StringBuffer prevCompanies = new StringBuffer(""), prevJobTitles = new StringBuffer(""), prevFromDates = new StringBuffer(""), 
					prevToDates = new StringBuffer(""), prevJobDescs = new StringBuffer(""),
					schoolNames= new StringBuffer(""),qualifications= new StringBuffer(""),qualifiedIns= new StringBuffer(""),
					schCompletionDates= new StringBuffer(""),additionalNotes= new StringBuffer(""),e_interests= new StringBuffer(""),
					dependentNames= new StringBuffer(""),dependentRelations= new StringBuffer(""),dependentDOBs= new StringBuffer("");
			
			int i = 0;
			// Experience rows data
			if(pprevComp != null){
				
				for(;i<pprevComp.length;i++){
					prevCompanies.append(pprevComp[i]).append("##");
				}
				for(int l = 0;l<pprevJob.length;l++){
					prevJobTitles.append(pprevJob[l]).append("##");
				}
				for(int l = 0;l<pprevFromDate.length;l++){
					prevFromDates.append(pprevFromDate[l]).append("##");
				}
				for(int l = 0;l<pprevToDate.length;l++){
					prevToDates.append(pprevToDate[l]).append("##");
				}
				for(int l = 0;l<pprevJobDesc.length;l++){
					prevJobDescs.append(pprevJobDesc[l]).append("##");
				}
				
				i = pprevComp.length;
				if(pprevJob.length < i){
					for(int ii=pprevJob.length;ii<i;ii++){
						prevJobTitles.append(" ##");
					}
				}
				if(pprevFromDate.length < i){
					for(int ii=pprevFromDate.length;ii<i;ii++){
						prevFromDates.append(" ##");
					}
				}
				if(pprevToDate.length < i){
					for(int ii=pprevToDate.length;ii<i;ii++){
						prevToDates.append(" ##");
					}
				}
				if(pprevJobDesc.length < i){
					for(int ii=pprevJobDesc.length;ii<i;ii++){
						prevJobDescs.append(" ##");
					}
				}
				
				empBean.setPrevComp(prevCompanies.toString());
				empBean.setPrevJob(prevJobTitles.toString());
				empBean.setPrevFromDate(prevFromDates.toString());
				empBean.setPrevToDate(prevToDates.toString());
				empBean.setPrevJobDesc(prevJobDescs.toString());
			}
			
			// Education rows data
			int k = 0;
			if(school_name != null){	

				for(;k<school_name.length;k++){
					schoolNames.append(school_name[k]).append("##");
				}
				for(int l = 0;l<qualification.length;l++){
					qualifications.append(qualification[l]).append("##");
				}
				for(int l = 0;l<qualified_in.length;l++){
					qualifiedIns.append(qualified_in[l]).append("##");
				}
				for(int l = 0;l<sch_completion_date.length;l++){
					schCompletionDates.append(sch_completion_date[l]).append("##");
				}
				for(int l = 0;l<add_notes.length;l++){
					additionalNotes.append(add_notes[l]).append("##");
				}
				for(int l = 0;l<interests.length;l++){
					e_interests.append(interests[l]).append("##");
				}
				
				k = school_name.length;
				if(qualification.length < k){
					for(int ii=qualification.length;ii<k;ii++){
						qualifications.append("").append("##");
					}
				}
				if(qualified_in.length < k){
					for(int ii=qualified_in.length;ii<k;ii++){
						qualifiedIns.append("").append("##");
					}
				}
				if(sch_completion_date.length < k){
					for(int ii=sch_completion_date.length;ii<k;ii++){
						schCompletionDates.append("").append("##");
					}
				}
				if(add_notes.length < k){
					for(int ii=add_notes.length;ii<k;ii++){
						additionalNotes.append("").append("##");
					}
				}
				if(interests.length < k){
					for(int ii=interests.length;ii<k;ii++){
						e_interests.append("").append("##");
					}
				}
				empBean.setSchoolName(schoolNames.toString());
				empBean.setQualification(qualifications.toString());
				empBean.setQualifiedIn(qualifiedIns.toString());
				empBean.setDoc(schCompletionDates.toString());
				empBean.setAdditionalNotes(additionalNotes.toString());
				empBean.setInterests(e_interests.toString());
			}
			
			// Dependent rows data
			int j = 0;
			if(dependent_name != null){
				
				for(;j<dependent_name.length;j++){
					dependentNames.append(dependent_name[j]).append("##");
				}
				for(int l = 0;l<dependent_relation.length;l++){
					dependentRelations.append(dependent_relation[l]).append("##");
				}
				for(int l = 0;l<dependent_dob.length;l++){
					dependentDOBs.append(dependent_dob[l]).append("##");
				}
				j = dependent_name.length;
				if(dependent_relation.length < j){
					for(int ii=dependent_relation.length;ii<j;ii++){
						dependentRelations.append("").append("##");
					}
				}
				if(dependent_dob.length < j){
					for(int ii=dependent_dob.length;ii<j;ii++){
						dependentDOBs.append("").append("##");
					}
				}
			
				empBean.setDependentName(dependentNames.toString());
				empBean.setDependentRelation(dependentRelations.toString());
				empBean.setDependentDob(dependentDOBs.toString());
			}

			if(StringUtils.isNotBlank(empBean.getDateOfJoin())){
				empBean.setDateOfJoinDateType(HRMSUtil.dateFormate(empBean.getDateOfJoin()));
			}
			if(StringUtils.isNotBlank(empBean.getDob())){
				empBean.setDobDateType(HRMSUtil.dateFormate(empBean.getDob()));
			}
			if(StringUtils.isNotBlank(empBean.getDateOfExit())){
				empBean.setDateOfExitDateType(HRMSUtil.dateFormate(empBean.getDateOfExit()));
			}
			HRMSUtil hrmsUtil = new HRMSUtil();
			empBean.setPassword(hrmsUtil.randNum());
			//empDao.addOrUpdate(empBean, i, k, j);
			String message = "";
			
			String result = empDao.addOrUpdate(empBean, i, k, j);
			
			if(result.equalsIgnoreCase("duplicate")){
				message = "There is already an entry with this data!!";
			}else if(result.equalsIgnoreCase("rolledback")){
				message = "Something went wrong!!! Please try again.";
			}else if(result.equalsIgnoreCase("insert success")){
				message = "Employee record got created succcessfully";
			}else if(result.equalsIgnoreCase("update success")){
				message = "Employee record got updated succcessfully";
			}else{
				message = result;
			}
			//request.setAttribute("message", message);
			redirectAttributes.addFlashAttribute("message", message);
					
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
		}

		return "redirect:employeeHome";
	}
	
	@RequestMapping(value = "/deleteEmployee")
	public @ResponseBody String deleteEmployee(@ModelAttribute("packCmd") EmployeeBean empBean,ModelMap model,HttpServletRequest request)
					throws JsonGenerationException, JsonMappingException, IOException {
		List<EmployeeBean> listOfEmplyees = null; 
		JSONObject jsonObj = new JSONObject();
		int employee_rec_Id, emp_id;
		boolean isDeleted = false;
		try {
			employee_rec_Id=empBean.getId();
			emp_id = empBean.getEmp_id();
				if(employee_rec_Id != 0){
					isDeleted = empDao.delete(employee_rec_Id,emp_id);
				}
			if(isDeleted){
				jsonObj.put("message", "Successfully deleted Employee");
			}else{
				jsonObj.put("message", " Deletion failed");
			}
			listOfEmplyees = empDao.getallEmployeeDetails(0, null, null, null);
			if(listOfEmplyees != null && listOfEmplyees.size() > 0) {
				for(EmployeeBean employeeBean:listOfEmplyees){
					/* prev_emp_id is useful in SP to update child tables experience,education,dependents*/
					employeeBean.setPrev_emp_id(employeeBean.getEmp_id());
					employeeBean.setExperienceDetails(empDao.getallExperienceDetails(employeeBean.getEmp_id()));
					employeeBean.setEducationDetails(empDao.getallEducationDetails(employeeBean.getEmp_id()));
					employeeBean.setDependentDetails(empDao.getallDependentDetails(employeeBean.getEmp_id()));
				}
			}
			if (listOfEmplyees != null && listOfEmplyees.size() > 0) {
				
				jsonObj.put("allEmployees", listOfEmplyees);
				// System.out.println(sJson);
			} else {
				jsonObj.put("allEmployees", "");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			logger.error(e);
			logger.fatal("error in deleteEmployee method in EmployeeController ");
			return jsonObj.put("message", "Something went wrong!!! Please try again.").toString();

		}
		return String.valueOf(jsonObj);
	}
	@ModelAttribute("title")
	public Map<Integer, String> populateTitle() {
		Map<Integer, String> statesMap = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,name from designation order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				statesMap.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return statesMap;
	}
	@ModelAttribute("department")
	public Map<Integer, String> populateDepartment() {
		Map<Integer, String> statesMap = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,name from department order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				statesMap.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return statesMap;
	}
	@ModelAttribute("employee")
	public Map<Integer, String> populateEmployee() {
		Map<Integer, String> statesMap = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id, CONCAT(`firstName`, ' ', `lastName`) as name from employee order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				statesMap.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return statesMap;
	}
	@ModelAttribute("roles")
	public Map<Integer, String> populateEmployeeRoles() {
		Map<Integer, String> statesMap = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,  name from roles order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				statesMap.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return statesMap;
	}
	
	@ModelAttribute("employeeTypes")
	public Map<Integer, String> populateEmployeeTypes() {
		Map<Integer, String> empTypes = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,  name from employee_type order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				empTypes.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return empTypes;
	}
	
	@ModelAttribute("locations")
	public Map<Integer, String> populateLocations() {
		Map<Integer, String> locations = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,  name from locations order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				locations.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return locations;
	}
	
	@ModelAttribute("maritalStatus")
	public Map<Integer, String> populateMaritalStatus() {
		Map<Integer, String> maritalStatus = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,name from marital_status order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				maritalStatus.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return maritalStatus;
	}
	
	@ModelAttribute("gender")
	public Map<Integer, String> populateGender() {
		Map<Integer, String> gender = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,name from gender order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				gender.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return gender;
	}
	
	@ModelAttribute("empStatus")
	public Map<Integer, String> populateEmpStatus() {
		Map<Integer, String> status = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,name from status order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				status.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return status;
	}
	
	@ModelAttribute("sourceOfHire")
	public Map<Integer, String> populateSourceOfHire() {
		Map<Integer, String> souces = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,name from source_of_hire order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				souces.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return souces;
	}
	
	/*@ModelAttribute("relation")
	public Map<Integer, String> populateRelation() {
		Map<Integer, String> gender = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select id,name from relation order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				gender.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return gender;
	}*/
	
	@ModelAttribute("reportingTo")
	public Map<Integer, String> populateReportingTo() {
		Map<Integer, String> empMap = new LinkedHashMap<Integer, String>();
		try {
			String sSql = "select emp.emp_id as id, concat(emp.firstName,' ',emp.lastName) as name from employee emp, "
					+" roles r where emp.employeeRole = r.id and r.id = 2 order by name asc";
			List<Proje> list = objDepartmentDao.populate(sSql);
			for (Proje bean : list) {
				empMap.put(bean.getId(), bean.getName());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return empMap;
	}

	@RequestMapping(value = "/populateReportingTo")
	public @ResponseBody String populateReportingTo(ModelMap model,HttpServletRequest request)
					throws JsonGenerationException, JsonMappingException, IOException {
		Map<Integer, String> empMap = new LinkedHashMap<Integer, String>(); 
		ObjectMapper objectMapper = null;
		String sJson = null;
		JSONObject jsonObj = new JSONObject();
		String deptId = null;
		boolean isDeleted = false;
		List<Proje> list = new ArrayList<Proje>();
		try {
			deptId=request.getParameter("deptId");
				if(StringUtils.isNotBlank(deptId)){ 
					String sSql = "select emp.emp_id as id, concat(emp.firstName,' ',emp.lastName) as name from employee emp, "
							+" roles r where emp.employeeRole = r.id and r.id = 2 and emp.departmentId = "+deptId+" order by name asc";
					list = objDepartmentDao.populate(sSql);
					
				}
			if (list != null && list.size() > 0) {
				
				jsonObj.put("empList", list);
				// System.out.println(sJson);
			} else {
				objectMapper = new ObjectMapper();
				jsonObj.put("empList", "");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			logger.error(e);
			logger.fatal("error in populateReportingTo method in EmployeeController ");
			return "employeeHome";

		}
		return String.valueOf(jsonObj);
	}
	

//	----------------------------------------USER EDIT EMPLOYEE DATA-------------------------------------------------------------------
	
	@RequestMapping(value = "employeeHome1")
	public String employeeHome1(@ModelAttribute("packCmd") EmployeeBean empBean, ModelMap model,HttpServletRequest request,HttpSession session) {
		System.out.println("in employeeHome1....");
		List<EmployeeBean> listOfEmplyees = null;
		ObjectMapper objectMapper = null;
		String sJson = "";
		String baseUrl = MiscUtils.getBaseUrl(request);
		int empId = 0;
		try{
			int newId = empDao.getNewEmpId();
			empBean.setEmp_id(newId);
			UsersBean objuserBean =(UsersBean) session.getAttribute("cacheUserBean");
			if(objuserBean != null){
				int rolId = Integer.parseInt(objuserBean.getRolId());
				
				if(rolId == 1 || rolId ==2 || rolId==3){
					empId = 0;
				}else{
					empId = objuserBean.getEmpId();
					System.out.println("emp id:"+empId);
				}
				}
			listOfEmplyees = empDao.getallEmployeeDetails(empId, null, null, null);
			if(listOfEmplyees != null && listOfEmplyees.size() > 0) {
				for(EmployeeBean employeeBean:listOfEmplyees){
					/* prev_emp_id is useful in SP to update child tables experience,education,dependents*/
					employeeBean.setPrev_emp_id(employeeBean.getEmp_id());
					employeeBean.setExperienceDetails(empDao.getallExperienceDetails(employeeBean.getEmp_id()));
					employeeBean.setEducationDetails(empDao.getallEducationDetails(employeeBean.getEmp_id()));
					employeeBean.setDependentDetails(empDao.getallDependentDetails(employeeBean.getEmp_id()));
				}
				  objectMapper = new ObjectMapper(); 
				  sJson =objectMapper.writeValueAsString(listOfEmplyees);
				  request.setAttribute("allOrders1", sJson);
				  request.setAttribute("baseUrl", baseUrl);
				 // System.out.println(sJson); 
			}else{
				objectMapper = new ObjectMapper(); 
				sJson =objectMapper.writeValueAsString(listOfEmplyees);
				request.setAttribute("allOrders1", "''");
			}
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
			logger.error(e);
			logger.fatal("error in addEmployeeHome method in EmployController class");
		}
		return "employeeHome1";
	}
	@RequestMapping(value = "/userAddEmployee")
	public String userAddEmployee(@ModelAttribute("packCmd") EmployeeBean empBean, ModelMap model, RedirectAttributes redirectAttributes,
			@RequestParam String[] pprevComp,@RequestParam String[] pprevJob,@RequestParam String[] pprevFromDate,@RequestParam String[] pprevToDate,@RequestParam String[] pprevJobDesc, 
			@RequestParam String[] school_name,@RequestParam String[] qualification,@RequestParam String[] qualified_in,@RequestParam String[] sch_completion_date,
			@RequestParam String[] add_notes,@RequestParam String[] interests,
			@RequestParam String[] dependent_name,@RequestParam String[] dependent_relation,@RequestParam String[] dependent_dob,
			HttpServletRequest request,HttpSession session)  {
		try{
			
			
			StringBuffer prevCompanies = new StringBuffer(""), prevJobTitles = new StringBuffer(""), prevFromDates = new StringBuffer(""), 
					prevToDates = new StringBuffer(""), prevJobDescs = new StringBuffer(""),
					schoolNames= new StringBuffer(""),qualifications= new StringBuffer(""),qualifiedIns= new StringBuffer(""),
					schCompletionDates= new StringBuffer(""),additionalNotes= new StringBuffer(""),e_interests= new StringBuffer(""),
					dependentNames= new StringBuffer(""),dependentRelations= new StringBuffer(""),dependentDOBs= new StringBuffer("");
			
			int i = 0;
			// Experience rows data
			if(pprevComp != null){
				
				for(;i<pprevComp.length;i++){
					prevCompanies.append(pprevComp[i]).append("##");
				}
				for(int l = 0;l<pprevJob.length;l++){
					prevJobTitles.append(pprevJob[l]).append("##");
				}
				for(int l = 0;l<pprevFromDate.length;l++){
					prevFromDates.append(pprevFromDate[l]).append("##");
				}
				for(int l = 0;l<pprevToDate.length;l++){
					prevToDates.append(pprevToDate[l]).append("##");
				}
				for(int l = 0;l<pprevJobDesc.length;l++){
					prevJobDescs.append(pprevJobDesc[l]).append("##");
				}
				
				i = pprevComp.length;
				if(pprevJob.length < i){
					for(int ii=pprevJob.length;ii<i;ii++){
						prevJobTitles.append(" ##");
					}
				}
				if(pprevFromDate.length < i){
					for(int ii=pprevFromDate.length;ii<i;ii++){
						prevFromDates.append(" ##");
					}
				}
				if(pprevToDate.length < i){
					for(int ii=pprevToDate.length;ii<i;ii++){
						prevToDates.append(" ##");
					}
				}
				if(pprevJobDesc.length < i){
					for(int ii=pprevJobDesc.length;ii<i;ii++){
						prevJobDescs.append(" ##");
					}
				}
				
				empBean.setPrevComp(prevCompanies.toString());
				empBean.setPrevJob(prevJobTitles.toString());
				empBean.setPrevFromDate(prevFromDates.toString());
				empBean.setPrevToDate(prevToDates.toString());
				empBean.setPrevJobDesc(prevJobDescs.toString());
			}
			
			// Education rows data
			int k = 0;
			if(school_name != null){	

				for(;k<school_name.length;k++){
					schoolNames.append(school_name[k]).append("##");
				}
				for(int l = 0;l<qualification.length;l++){
					qualifications.append(qualification[l]).append("##");
				}
				for(int l = 0;l<qualified_in.length;l++){
					qualifiedIns.append(qualified_in[l]).append("##");
				}
				for(int l = 0;l<sch_completion_date.length;l++){
					schCompletionDates.append(sch_completion_date[l]).append("##");
				}
				for(int l = 0;l<add_notes.length;l++){
					additionalNotes.append(add_notes[l]).append("##");
				}
				for(int l = 0;l<interests.length;l++){
					e_interests.append(interests[l]).append("##");
				}
				
				k = school_name.length;
				if(qualification.length < k){
					for(int ii=qualification.length;ii<k;ii++){
						qualifications.append("").append("##");
					}
				}
				if(qualified_in.length < k){
					for(int ii=qualified_in.length;ii<k;ii++){
						qualifiedIns.append("").append("##");
					}
				}
				if(sch_completion_date.length < k){
					for(int ii=sch_completion_date.length;ii<k;ii++){
						schCompletionDates.append("").append("##");
					}
				}
				if(add_notes.length < k){
					for(int ii=add_notes.length;ii<k;ii++){
						additionalNotes.append("").append("##");
					}
				}
				if(interests.length < k){
					for(int ii=interests.length;ii<k;ii++){
						e_interests.append("").append("##");
					}
				}
				empBean.setSchoolName(schoolNames.toString());
				empBean.setQualification(qualifications.toString());
				empBean.setQualifiedIn(qualifiedIns.toString());
				empBean.setDoc(schCompletionDates.toString());
				empBean.setAdditionalNotes(additionalNotes.toString());
				empBean.setInterests(e_interests.toString());
			}
			
			// Dependent rows data
			int j = 0;
			if(dependent_name != null){
				
				for(;j<dependent_name.length;j++){
					dependentNames.append(dependent_name[j]).append("##");
				}
				for(int l = 0;l<dependent_relation.length;l++){
					dependentRelations.append(dependent_relation[l]).append("##");
				}
				for(int l = 0;l<dependent_dob.length;l++){
					dependentDOBs.append(dependent_dob[l]).append("##");
				}
				j = dependent_name.length;
				if(dependent_relation.length < j){
					for(int ii=dependent_relation.length;ii<j;ii++){
						dependentRelations.append("").append("##");
					}
				}
				if(dependent_dob.length < j){
					for(int ii=dependent_dob.length;ii<j;ii++){
						dependentDOBs.append("").append("##");
					}
				}
			
				empBean.setDependentName(dependentNames.toString());
				empBean.setDependentRelation(dependentRelations.toString());
				empBean.setDependentDob(dependentDOBs.toString());
			}

			if(StringUtils.isNotBlank(empBean.getDateOfJoin())){
				empBean.setDateOfJoinDateType(HRMSUtil.dateFormate(empBean.getDateOfJoin()));
			}
			if(StringUtils.isNotBlank(empBean.getDob())){
				empBean.setDobDateType(HRMSUtil.dateFormate(empBean.getDob()));
			}
			if(StringUtils.isNotBlank(empBean.getDateOfExit())){
				empBean.setDateOfExitDateType(HRMSUtil.dateFormate(empBean.getDateOfExit()));
			}
			HRMSUtil hrmsUtil = new HRMSUtil();
			empBean.setPassword(hrmsUtil.randNum());
			//empDao.addOrUpdate(empBean, i, k, j);
			String message = "";
			
			String result = empDao.addOrUpdate(empBean, i, k, j);
			
			if(result.equalsIgnoreCase("duplicate")){
				message = "There is already an entry with this data!!";
			}else if(result.equalsIgnoreCase("rolledback")){
				message = "Something went wrong!!! Please try again.";
			}else if(result.equalsIgnoreCase("insert success")){
				message = "Employee record got created succcessfully";
			}else if(result.equalsIgnoreCase("update success")){
				message = "Employee record got updated succcessfully";
			}else{
				message = result;
			}
			//request.setAttribute("message", message);
			redirectAttributes.addFlashAttribute("message", message);
					
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
		}

		return "redirect:employeeHome1";
	}
	
}
