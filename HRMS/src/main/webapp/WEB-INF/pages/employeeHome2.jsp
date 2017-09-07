<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
	
		<!-- Dashboard Wrapper starts -->
		<div class="dashboard-wrapper">

			<!-- Top Bar starts -->
			<div class="top-bar">
				<div class="page-title">Employee</div>
			</div>
			<!-- Top Bar ends -->

			<!-- Main Container starts -->
			<div class="main-container">

				<!-- Container fluid Starts -->
				<div class="container-fluid">

					<!-- Spacer starts -->
					<div class="spacer">
					<!-- Row Starts -->
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="blog">
									<!-- <div class="blog-header">
										<h5 class="blog-title">Class Creation</h5>
									</div> -->


				    					 <div class="blog-body" id="view_list">
					
						<form:form action="addEmployee.htm" commandName="packCmd" method="post" id="cls-form" class="form-horizontal">
		<div align="left"><h4>Basic Info</h4>
			<table>
				<tr>
					<td>EmployeeID</td>
					<td>First Name</td>
				</tr>
				<tr>
					<td>
						<form:input path="emp_id" tabindex="1" placeholder="Enter Employee id" class="form-control" />
						<span class="contactNumber_error" id="contactNumber_error"></span>
					</td>
					<td>
						<form:input path="firstName" tabindex="2" placeholder="Enter First Name" class="form-control  onlyCharacters" />
						<span class="contactNumber_error" id="contactNumber_error"></span>
					</td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td>Email ID</td>
				</tr>
				<tr>
					<td>
						<form:input path="lastName" tabindex="3" placeholder="Enter last name" class="form-control  onlyCharacters" />
						<span class="contactNumber_error" id="contactNumber_error"></span>
					</td>
					<td>
						<form:input path="emailId" tabindex="4" placeholder="Enter email id" class="form-control  onlyCharacters" />
						<span class="contactNumber_error" id="contactNumber_error"></span>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>Nick Name</td>
					
				</tr>
				<tr>
					<td></td>
					<td><form:input path="nickName" tabindex="5" placeholder="Enter nick name" class="form-control  onlyCharacters" /></td>
					
				</tr>
			</table>
		</div><br>		
		<div align="left"><h4>Work</h4>
			<table>
				<tr>
					<td>Department</td>
					<td>Location</td>
				</tr>
				<tr>
					<td>
						<form:select path="departmentId" tabindex="1" class="form-control" >
							<form:option value="">-- Select --</form:option>
							<form:option value="HR">HR</form:option>
							<form:option value="Software Engineer">Software Engineer</form:option>
							<form:option value="Operations">Operations</form:option>
							
						</form:select>
					</td>
					<td>
						<form:select path="workLocation" tabindex="1" class="form-control" >
							<form:option value="">-- Select --</form:option>
							<form:option value="Guntur">Guntur</form:option>
							<form:option value="Vijayawada">Vijayawada</form:option>
							<form:option value="Hyderabad">Hyderabad</form:option>
							
						</form:select>
					</td>
				</tr>
				<tr>
					<td>Reporting To</td>
					<td>Date of joining</td>
				</tr>
				<tr>
					<td>
						<form:select path="reportingTo" tabindex="1" class="form-control" >
							<form:option value="">-- Select --</form:option>
							<form:option value="Srinivas">Srinivas</form:option>
							<form:option value="Ramesh">Ramesh</form:option>
							<form:option value="Narendra">Narendra</form:option>
							
						</form:select>
					</td>
					<td>
						<form:input path="dateOfJoin" tabindex="5" placeholder="Enter date" class="form-control  onlyCharacters" />
					</td>
				</tr>
				<tr>
					<td>Source of hire</td>
					<td>Employee Status</td>
					
				</tr>
				<tr>
					<td>
						<form:select path="sourceOfHire" tabindex="1" class="form-control" >
							<form:option value="">-- Select --</form:option>
							<form:option value="Direct">Direct</form:option>
							<form:option value="Referral">Referral</form:option>
							<form:option value="Web">Web</form:option>
							<form:option value="Newspaper">Newspaper</form:option>
							<form:option value="Advertisement">Advertisement</form:option>
							
						</form:select>
					</td>
					<td>
						<form:select path="status" tabindex="1" class="form-control" >
							<form:option value="">-- Select --</form:option>
							<form:option value="Active">Active</form:option>
							<form:option value="Terminated">Terminated</form:option>
							<form:option value="Deceased">Deceased</form:option>
							<form:option value="Resigned">Resigned</form:option>
							
						</form:select>
					</td>
				</tr>
				<tr>
					<td>Seating Location</td>
					<td>Employee Type</td>
				</tr>
				<tr>
					<td><form:input path="seatingLocation" tabindex="5" placeholder="Enter nick name" class="form-control  onlyCharacters" />
					<td>
						<form:select path="employeeType" tabindex="1" class="form-control" >
							<form:option value="">-- Select --</form:option>
							<form:option value="Permanent">Permanent</form:option>
							<form:option value="On Contract">On Contract</form:option>
							<form:option value="Temporary">Temporary</form:option>
							<form:option value="Trainee">Trainee</form:option>
							
						</form:select>
					</td>
				</tr>
				<tr>
					<td>Work Phone</td>
					<td>Extension</td>
				</tr>
				<tr>
					<td><form:input path="workPhone" tabindex="5" placeholder="Enter nick name" class="form-control  onlyCharacters" /></td>
					<td><form:input path="phoneExtension" tabindex="5" placeholder="Enter nick name" class="form-control  onlyCharacters" /></td>
				</tr>
				<tr>
					<td>Employee Role</td>
					<td>Title</td>
				</tr>
				<tr>
					<td>
						<form:select path="employeeRole" tabindex="1" class="form-control" >
							<form:option value="">-- Select --</form:option>
							<form:option value="Admin">Admin</form:option>
							<form:option value="Team member">Team member</form:option>
							<form:option value="Manager">Manager</form:option>
							<form:option value="Director">Director</form:option>
							<form:option value="Team Incharge">Team Incharge</form:option>
						</form:select>
					</td>
					<td>
						<form:radiobutton path="title" value="SE" label="Software Engineer" />
						<form:radiobutton path="title" value="SSE" label="Sr. Software Engineer" />
						<form:radiobutton path="title" value="DEV" label="Developer" />
						<form:radiobutton path="title" value="CTO" label="CTO" />
					</td>
				</tr>
			</table>
		</div><br>
		<div align="left"><h4>Personal</h4>
			<table>
				<tbody>
					<tr>
						<td>Mobile Phone</td>
						<td>Address</td>
					</tr>
					<tr>
						<td rowspan="1">
							<form:input path="contactNum" tabindex="5" placeholder="Enter nick name" class="form-control  onlyCharacters" />
						</td>
						
						<td rowspan="4">
							<form:textarea path="address" rows="4" cols="10"/>
						</td>
					</tr>
					<tr>
						<td rowspan="1">Other Email</td>
					</tr>
					<tr>
						<td rowspan="1"><form:input path="alternateEmail" tabindex="5" placeholder="Enter nick name" class="form-control  onlyCharacters" /></td>
					</tr>
					<tr><td></td></tr>
					<tr>
						<td>Birth Date</td>
						<td>Tags</td>
					</tr>
					<tr>
						<td rowspan="1"><form:input path="dob" tabindex="5" placeholder="Enter date" class="form-control  onlyCharacters" /></td>
						<td rowspan="4">
							<form:textarea path="tags" rows="4" cols="10"/>
						</td>
					</tr>
					<tr>
						<td rowspan="1">Marital Status</td>
					</tr>
					<tr>
						<td rowspan="3">
							<form:radiobutton path="maritalStatus" value="Single" label="Single" />
							<form:radiobutton path="maritalStatus" value="Married" label="Married" />
						</td>
					</tr>
				</tbody>
			</table>
		</div><br>
		<div align="left"><h4>Summary</h4>
			<table>
				<tbody>
					<tr>
						<td>Job Description</td>
						<td>About Me</td>
					</tr>
					<tr>
						<td>
							<form:textarea path="jobDesc" rows="4" cols="10"/>
						</td>
						<td>
							<form:textarea path="aboutMe" rows="4" cols="10"/>
						</td>
					</tr>
					<tr>
						<td>Ask me about/Expertise</td>
						<td>Date of exit</td>
					</tr>
					<tr>
						<td rowspan="4">
							<form:textarea path="expertise" rows="4" cols="10"/>
						</td>
						<td rowspan="1">
							<form:input path="dateOfExit" tabindex="5" placeholder="Enter nick name" class="form-control  onlyCharacters" />
						</td>
					</tr>
					<tr>
						<td rowspan="1">Gender</td>
					</tr>
					<tr>
						<td rowspan="2">
							<form:radiobutton path="gender" value="Male" label="Male" />
							<form:radiobutton path="gender" value="Female" label="Female" />
						</td>
					</tr>
					
				</tbody>
			</table>
		</div><br>
		<div align="left"><h4>Work experience</h4>
			<table id="experience_table">
				<tbody>
					<tr>
						<td>Previous Company Name</td>
						<td>Job Title</td>
						<td>From Date</td>
						<td>To Date</td>
						<td>Job Decsription</td>
						<td><span style="font:normal 12px agency, arial; color:blue; text-decoration:underline; cursor:pointer;" onclick="addMoreRowsForExperience(this.form);">
								Add Row
							</span>
						</td>
					</tr>
					
					<tr>
						<td valign="top">
							<input name="pprevComp" type="text"  value=""/>
<%-- 							<form:input path="prevComp" tabindex="5" placeholder="Enter company name" class="form-control  onlyCharacters" /> --%>
						</td>
						<td valign="top">
							<input name="pprevJob" type="text"  value=""/>
<%-- 							<form:input path="prevJob" tabindex="5" placeholder="Enter job title" class="form-control  onlyCharacters" /> --%>
						</td>
						<td valign="top">
							<input name="pprevFromDate" type="text"  value=""/>
<%-- 							<form:input path="prevFromDate" tabindex="5" placeholder="Enter date" class="form-control  onlyCharacters" /> --%>
						</td>
						<td valign="top">
							<input name="pprevToDate" type="text"  value=""/>
<%-- 							<form:input path="prevToDate" tabindex="5" placeholder="Enter date" class="form-control  onlyCharacters" /> --%>
						</td>
						<td>
							<textarea name="pprevJobDesc" rows="4" cols="10"></textarea>
<%-- 							<form:textarea path="prevJobDesc" rows="4" cols="10"/> --%>
						</td>
						</table>
						<div id="experience_rows"></div>
						</td>
						
					</tr>
					
				</tbody>
			</table>
		</div><br>
		<div align="left"><h4>Education</h4>
			<table>
				<tbody>
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
					<tr>
						<td valign="top">
							<input name="school_name" type="text"  value=""/>
<%-- 							<form:input path="schoolName" tabindex="5" placeholder="Enter qualification" class="form-control  onlyCharacters" /> --%>
						</td>
						<td valign="top">
							<input name="qualification" type="text"  value=""/>
<%-- 							<form:input path="qualification" tabindex="5" placeholder="Enter qualification" class="form-control  onlyCharacters" /> --%>
						</td>
						<td valign="top">
							<input name="qualified_in" type="text"  value=""/>
<%-- 							<form:input path="qualifiedIn" tabindex="5" placeholder="Enter stream" class="form-control  onlyCharacters" /> --%>
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
						</table>
						<div id="education_rows"></div>
						</td>
					</tr>
				</tbody>
			</table>
		</div><br>
		<div align="left"><h4>Dependent</h4>
			<table>
				<tbody>
					<tr>
						<td>Name</td>
						<td>Relationship</td>
						<td>Date of birth</td>
						<td><span style="font:normal 12px agency, arial; color:blue; text-decoration:underline; cursor:pointer;" onclick="addMoreRowsForDependent(this.form);">
								Add Row
							</span>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<input name="dependent_name" type="text"  value=""/>
<%-- 							<form:input path="dependentName" tabindex="5" placeholder="Enter name" class="form-control  onlyCharacters" /> --%>
						</td>
						<td>
							<select name="dependent_relation">
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
						</table>
						<div id="dependent_rows"></div>
						</td>
					</tr>
				</tbody>
			</table>
		</div><br>
									<div class="row">
											<div class="col-sm-8 col-sm-offset-4">
												<form:hidden path="id" /><br>
										  		<div class="form-group">
												  	<div class="col-sm-8 col-sm-offset-2">
														<input type="submit" class="btn btn-success" />
														<input type="submit" value="Submit and New">
														<input type="button" value="Cancel">
													</div>
										   		</div>
										   	</div>
										</div>		
	</form:form>
		</div>
									<div id="showData" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<input type ="hidden" value="${baseUrl }" id="baseUrl1">
									</div>
								</div>
							</div>
						</div>
						<!-- Row Ends -->
							
						<!-- Row Starts -->
					
						<div class="row" id="view_list1">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="blog">
									<div class="blog-header">
										<h4>List of Students</h4>
									</div>
									<div class="blog-body">
										<div class="table-responsive">
											<div id="basicExample_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
												<div class="row">
													<div class="col-sm-12">
 														<table id="basicExample" class="table table-striped table-condensed table-bordered no-margin dataTable" role="grid" aria-describedby="basicExample_info">
															<thead>
																<tr role="row">
																	<th class="sorting" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending">Photo</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">EmployeeID</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">First Name</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Last Name</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Email ID</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Department</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Date Of Joining</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Work Location</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Work Phone</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Extension</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">OtherEmail</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Reporting To</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Birth Date</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Mobile Phone</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Address</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Employee Status</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Employee Type</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Source Of Hire</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Marital Status</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Employee Role</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">About Me</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Tags</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Nick Name</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Job Description</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Date Of Exit</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Ask me about/Expertise</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Gender</th>
																	
																	
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending">Title</th>
																	<th class="sorting" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending">Action</th>
																</tr>
															</thead>
															<tbody>
																
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Row Ends -->
						
					</div>
					<!-- Spacer ends -->

				</div>
				<!-- Container fluid ends -->

			</div>
			<!-- Main Container ends -->

		</div>
		<!-- Dashboard Wrapper ends -->

<!-- <script src="http://code.jquery.com/jquery-1.10.2.js"></script> -->
<!-- <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script> -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
var serviceUnitArray = {};
var serviceUnitArray2 = {};
var baseUrl2 =$("#baseUrl1").val();

	 var listEmployees1 = ${allOrders1};
	if (listEmployees1 != "") {
		displayTable(listEmployees1);
	}

 	function displayTable(listEmployees) {
			$("#basicExample tr td").remove();
			$("#basicExample td").remove();
			serviceUnitArray = {};
			$
					.each(
							listEmployees,
							function(i, employeeObj) {
								
								if(employeeObj.imagePath == null){
									employeeObj.imagePath="img/default.png"
								}
								serviceUnitArray[employeeObj.id] = employeeObj;
								var id = '"' + employeeObj.id + '"emp_id';
								var tblRow = "<tr align='center' role='row' class='odd'>" + "<td'><a id='"
										+ employeeObj.emp_id
										+ "' href='javascript:forOrderDetails("
										+ employeeObj.emp_id
										+ ")' style='font-color:red'>"
										+ employeeObj.emp_id
										+ "</a></td>"
										+ "<td  class='hidden-sm hidden-xs'><img style='width: 65px;height: 65px;' src='"+baseUrl2+"/"+employeeObj.imagePath+"'/>"
										+ "</td>"
										+ "<td title='"+employeeObj.emp_id+"'>"
										+ employeeObj.emp_id
										+ "</td>"
										+ "<td title='"+employeeObj.firstName+"'>"
										+ employeeObj.firstName
										+ "</td>"
										+ "<td title='"+employeeObj.lastName+"'>"
										+ employeeObj.lastName
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.emailId+"' >"
										+ employeeObj.emailId
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.departmentId+"'>"
										+ employeeObj.departmentId
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.dateOfJoin+"'>"
										+ employeeObj.dateOfJoin
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.workLocation+"' >"
										+ employeeObj.workLocation
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.workPhone+"'>"
										+ employeeObj.workPhone
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.phoneExtension+"'>"
										+ employeeObj.phoneExtension
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.alternateEmail+"'>"
										+ employeeObj.alternateEmail
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.reportingTo+"'>"
										+ employeeObj.reportingTo
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.dob+"'>"
										+ employeeObj.dob
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.contactNum+"'>"
										+ employeeObj.contactNum
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.address+"'>"
										+ employeeObj.address
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.status+"'>"
										+ employeeObj.status
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.employeeType+"'>"
										+ employeeObj.employeeType
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.sourceOfHire+"'>"
										+ employeeObj.sourceOfHire
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.maritalStatus+"'>"
										+ employeeObj.maritalStatus
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.employeeRole+"'>"
										+ employeeObj.employeeRole
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.aboutMe+"'>"
										+ employeeObj.aboutMe
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.tags+"'>"
										+ employeeObj.tags
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.nickName+"'>"
										+ employeeObj.nickName
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.jobDesc+"'>"
										+ employeeObj.jobDesc
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.dateOfExit+"'>"
										+ employeeObj.dateOfExit
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.expertise+"'>"
										+ employeeObj.expertise
										+ "</td>"
										+ "<td class='hidden-sm hidden-xs' title='"+employeeObj.gender+"'>"
										+ employeeObj.gender
										+ "</td>"
										+ "<td align='center'>"
										+ '<a onclick=editEmployee('+employeeObj.id+')>'
										+ '<i style="cursor: pointer;" class="fa fa-address-book-o fa-2x"></i></a>' 
										+ '</td>'
										
										
										
										+ "<td style='text-align: center;'><a  onclick='editEmployee("
										+ employeeObj.id
										+ ")'><i style='color: green;' class='fa fa-edit'></i></a>&nbsp;|&nbsp;"
										+ "<a  onclick='deleteEmployee("
										+ employeeObj.id
										+ ")'><i style='color: red;' class='fa fa-trash'></i></a></td>" + 
										+ '</tr>'+
										'';
								$(tblRow).appendTo("#basicExample");
								
								//$("#imageId1").attr('src', "@Url.Content("~/Content/images/ajax_activity.gif)")
							});
	}
 	
 	function editEmployee(id) {
		var transactionId = serviceUnitArray[id].id;
		$("#id").val(serviceUnitArray[id].id);
		$("#emp_id").val(serviceUnitArray[id].emp_id);
		$('#firstName').val(serviceUnitArray[id].firstName);
		$('#lastName').val(serviceUnitArray[id].lastName);
		$('#emailId').val(serviceUnitArray[id].emailId);
		$('#nickName').val(serviceUnitArray[id].nickName);
		$('#departmentId').val(serviceUnitArray[id].departmentId);
		$('#departmentId').trigger("chosen:updated");
		$('#dateOfJoin').val(serviceUnitArray[id].dateOfJoin);
		$('#seatingLocation').val(serviceUnitArray[id].seatingLocation);
		$('#workPhone').val(serviceUnitArray[id].dateOfJoin);
		$('#phoneExtension').val(serviceUnitArray[id].phoneExtension);
		$('#contactNum').val(serviceUnitArray[id].contactNum);
		$('#address').val(serviceUnitArray[id].address);
		$('#alternateEmail').val(serviceUnitArray[id].alternateEmail);
		$('#dob').val(serviceUnitArray[id].dob);
		$('#tags').val(serviceUnitArray[id].tags);
		$('#jobDesc').val(serviceUnitArray[id].jobDesc);
		$('#aboutMe').val(serviceUnitArray[id].aboutMe);
		$('#expertise').val(serviceUnitArray[id].expertise);
		$('#dateOfExit').val(serviceUnitArray[id].dateOfExit);
		$('#workLocation').val(serviceUnitArray[id].workLocation);
		$('#workLocation').trigger("chosen:updated");
		$('#reportingTo').val(serviceUnitArray[id].reportingTo);
		$('#reportingTo').trigger("chosen:updated");
		$('#sourceOfHire').val(serviceUnitArray[id].sourceOfHire);
		$('#sourceOfHire').trigger("chosen:updated");
		$('#status').val(serviceUnitArray[id].status);
		$('#status').trigger("chosen:updated");
		$('#employeeType').val(serviceUnitArray[id].employeeType);
		$('#employeeType').trigger("chosen:updated");
		$('#employeeRole').val(serviceUnitArray[id].employeeRole);
		$('#employeeRole').trigger("chosen:updated");
		$('#gender').val(serviceUnitArray[id].gender);
		$('#gender').trigger("chosen:updated");
		// to display experience row
		 var listExperience = serviceUnitArray[id].experience;
		if (listExperience != "") {
			$
			.each(listExperience,function(i, experienceObj) {
						
						var experienceRow ="<tr><td><input name='pprevComp' type='text'  value='"+experienceObj.prevComp+"'/></td>"
						+"<td><input name='pprevJob' type='text'  value='"+experienceObj.prevJob+"'/></td>"
						+"<td><input name='pprevFromDate' type='text'  value='"+experienceObj.prevFromDate+"'/></td>"
						+"<td><input name='pprevToDate' type='text'  value='"+experienceObj.prevToDate+"'/></td>"
						+"<td><input name='pprevJobDesc' type='text'  value='"+experienceObj.prevJobDesc+"'/></td></tr>";
						$(experienceRow).appendTo("#experience_table");
					});
			
		}
		
 	
	}  	
 	





	var rowCount = 1;
	function addMoreRowsForExperience(frm) {
		rowCount ++;
		var recRow = '<p id="rowCount'+rowCount+'">'+
		'<td><input name="pprevComp" type="text"  value=""/></td>'+
		'<td><input name="pprevJob" type="text"  value=""/></td>'+
		'<td><input name="pprevFromDate" type="text"  value=""/></td>'+
		'<td><input name="pprevToDate" type="text"  value=""/></td>'+
		'<td><textarea name="pprevJobDesc" rows="4" cols="10"></textarea></td>'+
		'<a href="javascript:void(0);" onclick="removeRow('+rowCount+');">x</a>'
		'</p>';
			jQuery('#experience_rows').append(recRow);
		}
	rowCount = 1;
	function addMoreRowsForEducation(frm) {
		
		rowCount ++;
		var recRow = '<p id="rowCount'+rowCount+'">'+
		'<td><input name="school_name" type="text"  value=""/></td>'+
		'<td><input name="qualification" type="text"  value=""/></td>'+
		'<td><input name="qualified_in" type="text"  value=""/></td>'+
		'<td><input name="sch_completion_date" type="text"  value=""/></td>'+
		'<td><textarea name="add_notes" rows="4" cols="10"></textarea></td>'+
		'<td><textarea name="interests" rows="4" cols="10"></textarea></td>'+
		'<a href="javascript:void(0);" onclick="removeRow('+rowCount+');">x</a>'
		'</p>';
			jQuery('#education_rows').append(recRow);
	}
		
	rowCount = 1;
	function addMoreRowsForDependent(frm) {
		
		rowCount ++;
		var recRow = '<p id="rowCount'+rowCount+'">'+
		'<td><input name="dependent_name" type="text"  value=""/></td>'+
		'<td><select name="dependent_relation">'+
			'<option value="Father">Father</option>'+
			'<option value="Mother">Mother</option>'+
			'<option value="Brother">Brother</option>'+
			'<option value="Sister">Sister</option>'+
			'<option value="Husband">Husband</option>'+
			'<option value="Wife">Wife</option>'+
			'<option value="Child">Child</option>'+
			'</select>'+
		'</td>'+
		'<td><input name="dependent_dob" type="text"  value=""/></td>'+
		'<a href="javascript:void(0);" onclick="removeRow('+rowCount+');">x</a>'
		'</p>';
			jQuery('#dependent_rows').append(recRow);
	}

		function removeRow(removeNum) {
			jQuery('#rowCount'+removeNum).remove();
}
</script>
