<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>



<div class="page-wrapper-row full-height">
	<div class="page-wrapper-middle">
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<!-- BEGIN CONTENT BODY -->
				<!-- BEGIN PAGE CONTENT BODY -->
				<div class="page-content">
					<div class="container">
						<!-- BEGIN PAGE BREADCRUMBS -->
						<ul class="page-breadcrumb breadcrumb">
							<li><a href="#">Organization</a> <i class="fa fa-circle"></i></li>
							<li><span>Department</span></li>
						</ul>
						
						<div class="page-content-inner">
							<div class="row">
								<div class="col-md-12">
									<div class="portlet light portlet-fit portlet-form ">
                                                    <div class="portlet-body">
                                                    	<div class="tabbable-line">
                                                            <ul class="nav nav-tabs ">
                                                                <li class="active">
                                                                    <a href="#tab_15_1" data-toggle="tab" aria-expanded="false"> Department </a>
                                                                </li>
                                                                <li class="">
                                                                    <a href="#tab_15_2" data-toggle="tab" aria-expanded="false"> Hierarchical </a>
                                                                </li>
                                                            </ul>
                                                            <div class="tab-content">
                                                                <div class="tab-pane active" id="tab_15_1">

														<!-- BEGIN FORM-->
                                                        <form:form commandName="packCmd" method="post" id="addForm" class="form-horizontal" role="form">
                                                        
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                        	<form:hidden path="id"  />
                                                            <div class="form-group">
                                                                <label for="inputEmail1" class="col-md-4 control-label">Department Name</label>
                                                                <div class="col-md-8">
                                                                    <form:input path="name" placeholder="Enter Department Name" onkeydown="removeBorder(this.id);" class="form-control " required="true"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <label for="inputEmail1" class="col-md-4 control-label">Email</label>
                                                                <div class="col-md-8">
                                                                    <form:input path="email" placeholder="Enter Deprtment Email"  class="form-control"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <label for="inputPassword12" class="col-md-4 control-label">Department Head</label>
                                                                <div class="col-md-8">
                                                                    <form:input path="departmentHead" placeholder="Enter Department Head"  class="form-control onlyCharacters"/>
                                                                 </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <label for="inputPassword12" class="col-md-4 control-label">Parent Department</label>
                                                                <div class="col-md-6 col-sm-9 col-xs-9">
                                                                    <form:select path="parentid"  class="form-control">
																		<form:option value="">-- Choose Parent Department --</form:option>
																		<form:options items="${department}"></form:options>
																	</form:select>
																	
                                                                    <form:select path="parentid1" class="form-control" style="display:none">
																		<form:option value="">-- Choose Parent Department --</form:option>
																		<form:options items="${department}"></form:options>
																	</form:select>
                                                                 </div>
                                                                 <div class="col-md-2 col-sm-3 col-xs-3">
                                                                 	<i class="fa fa-plus-square-o fa-2x" aria-hidden="true" style="position: relative;top: 11px;cursor: pointer;"></i>
                                                                 </div>
                                                            </div>
                                                        </div>
                                                     </div>
                                                     <div class="row">
														<div class="col-md-offset-4 col-md-7">
                                                            <div class="form-group">
                                                                <div class="col-md-offset-4 col-md-8">
                                                                    <input type="button" id="submitId" class="btn btn-success" value="Add Department" onclick="submitDepartment()"/>
                                                                	<input type="reset" class="btn btn-danger" id="cancel" value="Reset"/>
<!--                                                                 	<a class="btn btn-danger" href='DepartmentHome'>Cancel</a> -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                     </div>
                                                        </form:form>
														<!-- END FORM-->
                                                        
                                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                                <div class="portlet box green">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            Department Details </div>
                                                        <div class="tools"> </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                    <div id="tableId">
                                                        <table class="table table-striped table-bordered table-hover dt-responsive" width="100%" id="sample_3" cellspacing="0">
                                                            <thead>
                                                                <tr>
																	<th>Department Name</th>
																	<th>Email</th>
																	<th>Department Head</th>
																	<th>Parent Department</th>
																	<th style="text-align: center;">Action</th>
																</tr>
                                                            </thead>
                                                            <tbody>
                                                            	
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    </div>
                                                </div>
                                                <!-- END EXAMPLE TABLE PORTLET-->
                                                        
                                                                </div>
                                                                <!-- end of Department -->
                                                                <div class="tab-pane" id="tab_15_2">
                                                                    <h4> Department Hierarchical </h4>
                                                                    <div id="orgChartContainer">
																    	<div id="orgChart"></div>
																    </div>
                                                                </div>
                                                            </div>
                                                        </div>
		                                    		</div>
		                                    	</div>
		                                    </div>
										</div>	
									</div>
								</div>
							</div>
				<!-- END PAGE CONTENT BODY -->
				<!-- END CONTENT BODY -->
			</div>
			<!-- END CONTENT -->
		</div>
		<!-- END CONTAINER -->
	</div>
</div>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.orgchart.js"></script>

<script src="assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        
<script src="assets/pages/scripts/table-datatables-responsive.min.js" type="text/javascript"></script>
<script src="js/departmentcreation.js" ></script>
<script type="text/javascript">

	var listOrders1 = ${allOrders1};
	if (listOrders1 != "") {
		displayTable(listOrders1);
	}
	var test = ${allOrders};
    var testData = ${allOrders};
    $(function(){
        org_chart = $('#orgChart').orgChart({
            data: testData
        });
    });
	
</script>