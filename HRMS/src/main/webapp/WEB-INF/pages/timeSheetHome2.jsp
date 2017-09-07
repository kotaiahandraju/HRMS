<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- <script src="assets/js/jquery.min.js"></script> -->
<script type="text/javascript" src="js/holiday.js"></script>
<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
<script src="assets/plugins/datatables/dataTables.buttons.min.js"></script>
<script src="assets/plugins/datatables/buttons.bootstrap.min.js"></script>
<script src="assets/plugins/datatables/dataTables.responsive.min.js"></script>
<script src="assets/plugins/datatables/responsive.bootstrap.min.js"></script>
<script src="assets/plugins/datatables/dataTables.colVis.js" type="text/javascript"></script>
<!-- 	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>  
		<div class="dashboard-wrapper">

			<!-- Top Bar starts -->
			<div class="top-bar">
				<div class="page-title">Create Timesheet</div>
			</div>
			<!-- Top Bar ends -->

			<!-- Main Container starts -->
			<div class="main-container">

				<!-- Container fluid Starts -->
				<div class="container-fluid">

					<!-- Spacer starts -->
	<form:form action="addTimeSheet.htm" commandName="packCmd" method="post" id="cls-form" class="form-horizontal">
		<div align="left"><h4>Time Sheet</h4>
			<table>
				<tbody>
					<tr>
						<td>Period</td>
						<td>
							<form:select path="period" tabindex="1" class="form-control" >
								<form:option value="thisWeek">This Week</form:option>
								<form:option value="today">Today</form:option>
								<form:option value="lastWeek">Last Week</form:option>
								<form:option value="yesterday">Yesterday</form:option>
								<form:option value="thisMonth">This Month</form:option>
								<form:option value="lastMonth">Last Month</form:option>
								<form:option value="custom">Custom</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>Employee Name</td>
						<td>
							<form:select path="empName" tabindex="1" class="form-control" >
								<form:option value="1sri">1sri</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>Clients</td>
						<td>
							<form:select path="clients" tabindex="1" class="form-control" >
								<form:option value="allClients">All Clients</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>Projects</td>						
						<td>
							<form:select path="projects" tabindex="1" class="form-control" >
								<form:option value="allProjs">All Projects</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>Jobs</td>
						<td>
							<form:select path="jobs" tabindex="1" class="form-control" >
								<form:option value="allJobs">All Jobs</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>Billable Status</td>
						<td>
							<form:select path="billableStatus" tabindex="1" class="form-control" >
								<form:option value="all">All</form:option>
								<form:option value="billable">Billable</form:option>
								<form:option value="nonbillable">Non-Billable</form:option>
							</form:select>
						</td>
					</tr>
				</tbody>
			</table>
		</div><br>
		
				<div>
			<input type="submit" value="Next">
			<input type="button" value="Cancel">
		</div>
	</form:form>
	
		
					<!-- Spacer ends -->

				</div>
				<!-- Container fluid ends -->

			</div>
			<!-- Main Container ends -->

		</div>

