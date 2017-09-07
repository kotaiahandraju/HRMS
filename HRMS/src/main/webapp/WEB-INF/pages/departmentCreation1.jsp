<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
	<script type="text/javascript" src="js/faculty.js"></script>
	<div class="loadingajax" id="loadAjax" style="display:none"></div>
		<!-- Dashboard Wrapper starts -->
		<div class="dashboard-wrapper">

			<!-- Top Bar starts -->
			<div class="top-bar">
				<div class="page-title" id="headId">Add Faculty</div>
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
								<div class="blog" style="border: 1px solid;">
									<!-- <div class="blog-header">
										<h5 class="blog-title">Add Faculty</h5>
									</div> -->
									<div class="blog-body">
										<form:form action="addDepartment.htm" commandName="packCmd" method="post" class="form-horizontal" id="fac-form">
										<div class="row">
											<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
												<div class="form-group">
												    <label for="inputEmail3" class="col-sm-4 control-label">Department Name</label>
												    <div class="col-sm-8">											
														<form:input path="name" tabindex="1" placeholder="Enter Department Name" class="form-control  onlyCharacters" required="true"/>
														<span class="name_error" id="name_error"></span>
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
												<div class="form-group">
												    <label for="inputEmail3" class="col-sm-4 control-label">mail Alias</label>
												    <div class="col-sm-8">											
														<form:input path="email" tabindex="2" placeholder="Enter mail Alias" class="form-control  onlyCharacters" required="true"/>
														<span class="name_error" id="name_error"></span>
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
												<div class="form-group">
												    <label for="inputEmail3" class="col-sm-4 control-label">DepartmentHead</label>
												    <div class="col-sm-8">
													    <form:select path="departmentHeadId" tabindex="2" class="form-control" required="true">
															<form:option value="">-- Choose Gender --</form:option>
															<form:option value="1"> koti</form:option>
															<form:option value="2">sri</form:option>
														</form:select>
														<span class="gender_error" id="gender_error"></span>
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
												<div class="form-group">
												    <label for="inputEmail3" class="col-sm-4 control-label">Parent Department</label>
												    <div class="col-sm-8">
													    <form:select path="parentDepartmentId" tabindex="2" class="form-control" required="true">
															<form:option value="">-- Choose Gender --</form:option>
															<form:option value="1"> Hr</form:option>
															<form:option value="2">Software</form:option>
														</form:select>
														<span class="gender_error" id="gender_error"></span>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-8 col-sm-offset-4">
												<form:hidden path="id"/>
												<div class="form-group">
												  	<div class="col-sm-8 col-sm-offset-2">
													<input type="submit" id="submitId" value="Submit" class="btn btn-success" tabindex="5"/>
													<button type="button" class="btn btn-danger" id="cancel" tabindex="6">Reset</button>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
										<div class="col-sm-8 col-sm-offset-4">
											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2">
												<%
													String message = null;
													message=(String)session.getAttribute("message");
											        if(message!=null)
											        {
														out.println("<span class='animated fadeIn' style='animation-iteration-count: 7;animation-duration: 1s;color: red;'>"+message+"</span>");
														session.setAttribute("message", null);
													}
										        %>
												</div>
											</div>
										</div>
									</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
						<!-- Row Ends -->
						
						<!-- Row Starts -->
						<div class="row gutter">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="blog">
									<div class="blog-header">
										<h4>List of Faculty</h4>
									</div>
									<div class="blog-body">
										<div class="table-responsive">
											<div id="basicExample_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
												<div class="row">
													<div class="col-sm-12">
 														<table id="basicExample" class="table table-striped table-condensed table-bordered no-margin dataTable" role="grid" aria-describedby="basicExample_info">
															<thead>
																<tr role="row">
																	<th class="sorting_asc" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending">Gender</th>
																	<th class="sorting" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending">Qualification</th>
																	<th class="sorting hidden-sm hidden-xs" tabindex="0" aria-controls="basicExample" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending">Mobile</th>
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

var listOrders1 = ${allOrders1};
if (listOrders1 != "") {
	displayTable(listOrders1);
}

</script>
