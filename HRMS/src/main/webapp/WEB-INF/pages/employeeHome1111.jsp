
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


		<!-- Body Starts Here -->
        <div class="wrapper">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                            <div class="btn-group pull-right">
                                <ol class="breadcrumb hide-phone p-0 m-0">
                                    <li><a href="">HRMS</a></li>
                                    <li><a href="">Organization</a></li>
                                    <li class="active">Employee</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Employee</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->
                
                
                <div class="row">
                    <div class="col-md-12">
                    
                    		<!-- Add Department Form Starts Here -->
                                <div class="tab-pane active" id="departmentTab">
			                        <!-- BEGIN FORM-->
			                        <form:form  action="addEmployee.htm" commandName="packCmd" method="post" id="addForm" class="form-horizontal" role="form">
			                           <div class="row">
			                           <h5>Basic Info</h5>
			                           </div>
			                           
			                                                        
									<div class="row">
										<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<form:hidden path="id"  />
			                            	<form:hidden path="prev_emp_id"  />
			                            	<div class="form-group">
			                                	<label for="inputEmployeeId" class="col-md-4 control-label">Employee ID</label>
			                                	<div class="col-md-8">
			                                    	<form:input  path="emp_id" placeholder="Enter Employee ID" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters" required="true"/>
			                                	</div>
			                            	</div>
			                            </div>
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputFirstName" class="col-md-4 control-label">First Name</label>
			                                	<div class="col-md-8">
			                                    	<form:input path="firstName" placeholder="Enter First Name" onkeydown="removeBorder(this.id);" class="form-control"/>
			                                 	</div>
			                            	 </div>
			                            </div>
			                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputLastName" class="col-md-4 control-label">Last Name</label>
			                                    <div class="col-md-8">
			                                    	<form:input path="lastName" placeholder="Enter Last Name" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                         		</div>
			                          	</div>
									</div>
			                        <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputEmailId" class="col-md-4 control-label">Email ID</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="emailId" placeholder="Enter Email ID" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputNickName" class="col-md-4 control-label">Nick Name</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="nickName" placeholder="Enter Nick Name" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                      </div>
			                      <div class="row">
			                      <h5>Work</h5>
			                      </div>
			                      <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputDepartmentId" class="col-md-4 control-label">Department</label>
			                                 	<div class="col-md-8">
			                                    	<form:select path="departmentId" tabindex="1" class="form-control" >
														<form:option value="">-- Select --</form:option>
														<form:option value="HR">HR</form:option>
														<form:option value="Software Engineer">Software Engineer</form:option>
														<form:option value="Operations">Operations</form:option>
													</form:select>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputWorkLocation" class="col-md-4 control-label">Location</label>
			                                 	<div class="col-md-8">
			                                    	<form:select path="workLocation" tabindex="1" class="form-control" >
														<form:option value="">-- Select --</form:option>
														<form:option value="Guntur">Guntur</form:option>
														<form:option value="Vijayawada">Vijayawada</form:option>
														<form:option value="Hyderabad">Hyderabad</form:option>
							
						                           </form:select>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputReportingTo" class="col-md-4 control-label">Reporting To</label>
			                                 	<div class="col-md-8">
			                                    <form:select path="reportingTo" tabindex="1" class="form-control" >
														<form:option value="">-- Select --</form:option>
														<form:option value="Srinivas">Srinivas</form:option>
														<form:option value="Ramesh">Ramesh</form:option>
														<form:option value="Narendra">Narendra</form:option>
							
						                       </form:select>	
			                                	</div>
			                               	</div>
			                           	</div>
			                    </div>
			                     <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputDateofJoining" class="col-md-4 control-label">Date Of Joining</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="dateOfJoin" placeholder="Enter Date of Joining" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputSourceofHire" class="col-md-4 control-label">Source Of Hire</label>
			                                 	<div class="col-md-8">
			                                   <form:select path="sourceOfHire" tabindex="1" class="form-control" >
																<form:option value="">-- Select --</form:option>
																<form:option value="Direct">Direct</form:option>
																<form:option value="Referral">Referral</form:option>
																<form:option value="Web">Web</form:option>
																<form:option value="Newspaper">Newspaper</form:option>
																<form:option value="Advertisement">Advertisement</form:option>
																
						                   </form:select>
			                                    	
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputEmployeeStatus" class="col-md-4 control-label">Empolyee Status</label>
			                                 	<div class="col-md-8">
			                                    <form:select path="status" tabindex="1" class="form-control" >
														<form:option value="">-- Select --</form:option>
														<form:option value="Active">Active</form:option>
														<form:option value="Terminated">Terminated</form:option>
														<form:option value="Deceased">Deceased</form:option>
														<form:option value="Resigned">Resigned</form:option>
						                     </form:select>
			                                	</div>
			                               	</div>
			                           	</div>
			                    </div>
			                    <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputSeatingLocation" class="col-md-4 control-label">Seating Location</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="seatingLocation" placeholder="Enter Seating Location" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputEmployeeType" class="col-md-4 control-label">Employee Type</label>
			                                 	<div class="col-md-8">
			                                  <form:select path="employeeType" tabindex="1" class="form-control" >
													<form:option value="">-- Select --</form:option>
													<form:option value="Permanent">Permanent</form:option>
													<form:option value="On Contract">On Contract</form:option>
													<form:option value="Temporary">Temporary</form:option>
													<form:option value="Trainee">Trainee</form:option>
							
						                     </form:select>
			                                   
			                                    	
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputWorkPhone" class="col-md-4 control-label">Work Phone</label>
			                                 	<div class="col-md-8">
			                                   <form:input path="workPhone" placeholder="Enter Work Phone" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                    </div>
			                    <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputExtension" class="col-md-4 control-label">Extension</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="phoneExtension" placeholder="Enter Extension" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputWorkLocation" class="col-md-4 control-label">Employee Type</label>
			                                 	<div class="col-md-8">
			                                  <form:select path="employeeType" tabindex="1" class="form-control" >
													<form:option value="">-- Select --</form:option>
													<form:option value="Permanent">Permanent</form:option>
													<form:option value="On Contract">On Contract</form:option>
													<form:option value="Temporary">Temporary</form:option>
													<form:option value="Trainee">Trainee</form:option>
							
						                     </form:select>
			                                   
			                                    	
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputEmployeeRole" class="col-md-4 control-label">Employee Role</label>
			                                 	<div class="col-md-8">
			                                   <form:select path="employeeRole" tabindex="1" class="form-control" >
														<form:option value="">-- Select --</form:option>
														<form:option value="Admin">Admin</form:option>
														<form:option value="Team member">Team member</form:option>
														<form:option value="Manager">Manager</form:option>
														<form:option value="Director">Director</form:option>
														<form:option value="Team Incharge">Team Incharge</form:option>
						                     </form:select>
			                                	</div>
			                               	</div>
			                           	</div>
			                    </div>
			                    
			                    <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputExtension" class="col-md-4 control-label">Title</label>
			                                 	<div class="col-md-8">
			                                 	
			                                 	  <form:select path="title" tabindex="1" class="form-control" >
													<form:option value="">--Select Title --</form:option>
													<form:option value="SE">Software Engineer</form:option>
													<form:option value="SSE">Sr. Software Engineer</form:option>
													<form:option value="DEV">Developer</form:option>
													<form:option value="CTO">CTO</form:option>
							
						                     </form:select>
			                                   
			                                 	
			                                    	
			                                  </div>
			                               	</div>
			                           	</div>
			                    </div>
			                    <div class="row">
			                    <h5>Personal</h5>
			                    </div>
			                        <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputMobile" class="col-md-4 control-label">Mobile Number</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="contactNum" placeholder="Enter Mobile Number" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputAddress" class="col-md-4 control-label">Address</label>
			                                 	<div class="col-md-8">
			                                  <form:textarea path="address" placeholder="Enter Address" rows="4" cols="6" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                    	
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputOtherEmail" class="col-md-4 control-label">Other Email ID</label>
			                                 	<div class="col-md-8">
			                                   <form:input path="alternateEmail" placeholder="Enter Alternate Email ID" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                    </div>
			                    <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputDateofBrith" class="col-md-4 control-label">Date Of Brith</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="dob" placeholder="Enter Date Of Brith" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputTags" class="col-md-4 control-label">Tags</label>
			                                 	<div class="col-md-8">
			                                  <form:textarea path="tags" placeholder="Enter Tags" rows="4" cols="6" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                    	
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputMaritalStatus" class="col-md-4 control-label">Marital Status</label>
			                                 	<div class="col-md-8">
			                                 	 <form:select path="maritalStatus" tabindex="1" class="form-control" >
													<form:option value="">--Select Marital Status --</form:option>
													<form:option value="Single">Single</form:option>
													<form:option value="Married">Married</form:option>
													
							
						                     </form:select>
			                                  
			                                	</div>
			                               	</div>
			                           	</div>
			                    </div>
			                    <div class="row">
			                    <h5>Summary</h5>
			                    </div>
			                    <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputJobDescription" class="col-md-4 control-label">Job Description</label>
			                                 	<div class="col-md-8">
			                                    	<form:textarea path="jobDesc" placeholder="Enter Job Description" row="4" cols="6" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputAboutMe" class="col-md-4 control-label">About Me</label>
			                                 	<div class="col-md-8">
			                                  <form:textarea path="aboutMe" placeholder="Enter About Me" rows="4" cols="6" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                    	
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputExpertise" class="col-md-4 control-label">Ask me about/Expertise</label>
			                                 	<div class="col-md-8">
			                                  <form:textarea path="expertise" placeholder="Enter Expertise" rows="4" cols="6" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                    </div>
			                    <div class="row">
			                        	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputDateofExit" class="col-md-4 control-label">Date Of Exit</label>
			                                 	<div class="col-md-8">
			                                    	<form:input path="dateOfExit" placeholder="Enter Date of Exit"  onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/>
			                                	</div>
			                               	</div>
			                           	</div>
			                           	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			                            	<div class="form-group">
			                                	<label for="inputGender" class="col-md-4 control-label">Gender</label>
			                                 	<div class="col-md-8">
			                                 	 <form:select path="gender" tabindex="1" class="form-control" >
													<form:option value="">--Select Gender --</form:option>
													<form:option value="Male">Male</form:option>
													<form:option value="Female">Female</form:option>
													
							
						                     </form:select>
			                                  
			                                    	
			                                	</div>
			                               	</div>
			                           	</div>
			                           	
			                    </div>
			                    <div class="row">
			                    <h5>Work experience</h5>
			                    </div>
			                    <div class="row">
			                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                       <table id="experience_table" class="table table-responsive">
				                    <thead>
					                 <tr>
									 	<th>Previous Company Name</th>
										<th>Job Title</th>
										<th>From Date</th>
										<th>To Date</th>
										<th>Job Decsription</th>
										<th><span style="font:normal 12px agency, arial; color:blue; text-decoration:underline; cursor:pointer;" onclick="addMoreRowsForExperience();">
												Add Row
						                  </span>
						              </th>
					                </tr>
									</thead>
									<tbody>
									<tr >
										<td valign="top">
											<input name="pprevComp" type="text"  value=""/>
<%-- 									        <form:input path="prevComp" tabindex="5" placeholder="Enter company name" class="form-control  onlyCharacters" /> --%>
										</td>
										<td valign="top">
											<input name="pprevJob" type="text"  value=""/>
<%-- 								          <form:input path="prevJob" tabindex="5" placeholder="Enter job title" class="form-control  onlyCharacters" /> --%>
										</td>
										<td valign="top">
											<input name="pprevFromDate" type="text"  value=""/>
<%-- 										<form:input path="prevFromDate" tabindex="5" placeholder="Enter date" class="form-control  onlyCharacters" />  --%>
										</td>
										<td valign="top">
											<input name="pprevToDate" type="text"  value=""/>
<%-- 									<form:input path="prevToDate" tabindex="5" placeholder="Enter date" class="form-control  onlyCharacters" />  --%>
										</td>
										<td>
											<textarea name="pprevJobDesc" rows="4" cols="10"></textarea>
<%-- 								          <form:textarea path="prevJobDesc" rows="4" cols="10"/> --%>
										</td>
								</tr>
								</tbody>
						</table>
					</div>
				</div>
				<div class="row">
			                    <h5>Education</h5>
			                    </div>
			                    <div class="row">
			                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                         <table id="education_table" class="table table-responsive" >
				<thead>
					<tr>
						<td>School Name</td>
						<td>Degree/Diploma</td>
						<td>Field(s) of Study</td>
						<td>Date of Completion</td>
						<td>Additional Notes</td>
						<td>Interests</td>
						<td><span style="font:normal 12px agency, arial; color:blue; text-decoration:underline; cursor:pointer;" onclick="addMoreRowsForEducation(this.form);">
								Add Row
							</span>
						</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td valign="top">
							<input name="school_name" type="text"  value=""/>
						</td>
						<td valign="top">
							<input name="qualification" type="text"  value=""/>
						</td>
						<td valign="top">
							<input name="qualified_in" type="text"  value=""/>
						</td>
						<td valign="top">
						<input name="sch_completion_date" type="text"  value=""/>
<%-- 							<form:input path="doc" tabindex="5" placeholder="Enter date" class="form-control  onlyCharacters" /> --%>
						</td>
						<td>
							<textarea name="add_notes" rows="4" cols="10"></textarea>
<%-- 							<form:textarea path="additionalNotes" rows="4" cols="10"/> --%>
						</td>
						<td>
							<textarea name="interests" rows="4" cols="10"></textarea>
<%-- 							<form:textarea path="interests" rows="4" cols="10"/> --%>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
   </div> 
            <div class="row">
			                    <h5>Dependent</h5>
			                    </div>
           
             <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <table  id="dependent_table" class="table table-responsive">
				<thead>
					<tr>
						<td>Name</td>
						<td>Relationship</td>
						<td>Date of birth</td>
						<td><span style="font:normal 12px agency, arial; color:blue; text-decoration:underline; cursor:pointer;" onclick="addMoreRowsForDependent(this.form);">
								Add Row
							</span>
						</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td valign="top">
							<input name="dependent_name" type="text"  value=""/>
<%-- 							<form:input path="dependentName" tabindex="5" placeholder="Enter name" class="form-control  onlyCharacters" /> --%>
						</td>
						<td>
							<select name="dependent_relation">
								<option value="">-- Select --</option>
								<option value="Father">Father</option>
								<option value="Mother">Mother</option>
								<option value="Brother">Brother</option>
								<option value="Sister">Sister</option>
								<option value="Husband">Husband</option>
								<option value="Wife">Wife</option>
								<option value="Child">Child</option>
							</select>
<%-- 							<form:select path="dependentRelation" tabindex="1" class="form-control" > --%>
<%-- 								<form:option value="">-- Select --</form:option> --%>
<%-- 								<form:option value="Father">Father</form:option> --%>
<%-- 								<form:option value="Mother">Mother</form:option> --%>
<%-- 								<form:option value="Brother">Brother</form:option> --%>
<%-- 								<form:option value="Sister">Sister</form:option> --%>
<%-- 								<form:option value="Husband">Husband</form:option> --%>
<%-- 								<form:option value="Wife">Wife</form:option> --%>
<%-- 								<form:option value="Child">Child</form:option> --%>
								
<%-- 							</form:select> --%>
						</td>
						<td valign="top">
							<input name="dependent_dob" type="text"  value=""/>
<%-- 							<form:input path="dependentDob" tabindex="5" placeholder="Enter date of birth" class="form-control  onlyCharacters" /> --%>
						</td>
					</tr>
				</tbody>
			</table>
		</div><br>
                
              </div>
             </div>
			
			          
			                    	<div class="row">
										<div class="col-md-offset-4 col-md-8">
			                            	<div class="form-group">
			                                	<div class="col-md-offset-2 col-md-8">
			                                    	<input type="submit" class="btn btn-success" value="Add Employee" />
			                                    	<!-- <input type="reset" class="btn btn-danger" id="cancel" value="Reset"/> -->
			                                    	<a class="btn btn-danger" href='employeeHome'>Cancel</a>
												</div>
			                                </div>
			                        	</div>
			                       	</div>
			                       	
			                		</form:form>
							<!-- END FORM-->
							
							<!-- DataTable Starts Here -->
									<div class="card-box table-responsive">
			                            <div id="tableId">
			                            <table id="datatable-colvid" class="table table-striped table-bordered">
			                                <thead>
			                                <tr>
			                                    <th>Employee ID</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Email ID</th>
												<th>Department</th>
												<th>Date Of Joining</th>
												<th>Work Location</th>
												<th>Work Phone</th>
												<th>Extension</th>
												<th>Other Email</th>
												<th>Reporting To</th>
												<th>Birth Date</th>
												<th>Mobile Phone</th>
												<th>Address</th>
												<th>Employee Status</th>
												<th>Employee Type</th>
												<th>Source Of Hire</th>
												<th>Marital Status</th>
												<th>Employee Role</th>
												<th>About Me</th>
												<th>Tags</th>
												<th>Nick Name</th>
												<th>Job Description</th>
												<th>Date Of Exit</th>
												<th>Ask me about/Expertise</th>
												<th>Gender</th>
												<th style="text-align: center;">Action</th>
			                                </tr>
			                                </thead>
			
			                                <tbody>
			                                
			                                </tbody>
			                            </table>
			                            </div>
									</div>
									<!-- DataTable ends Here -->
                    
                        </div>
                    </div> <!-- end col -->
                </div>
                
            </div>
        </div>
        <!-- Body ends Here -->

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- <script src="assets/js/jquery.min.js"></script> -->
<script type="text/javascript" src="js/jquery.orgchart.js"></script>
<script type="text/javascript" src="js/employeehome.js"></script>
<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
<script src="assets/plugins/datatables/dataTables.buttons.min.js"></script>
<script src="assets/plugins/datatables/buttons.bootstrap.min.js"></script>
<script src="assets/plugins/datatables/dataTables.responsive.min.js"></script>
<script src="assets/plugins/datatables/responsive.bootstrap.min.js"></script>
<script src="assets/plugins/datatables/dataTables.colVis.js" type="text/javascript"></script>
        

<script type="text/javascript">

	var serviceUnitArray = {};
	var baseUrl2 =$("#baseUrl1").val();

	 var listEmployees1 = ${allOrders1};
	if (listEmployees1 != "") {
		displayTable(listEmployees1);
	}

</script>