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
				<!-- BEGIN PAGE HEAD-->
				<div class="page-head">
					<div class="container">
						<!-- BEGIN PAGE TITLE -->
						<div class="page-title">
							<h1>
								Editable Datatables <small>editable datatable samples</small>
							</h1>
						</div>
						<!-- END PAGE TITLE -->
						<!-- BEGIN PAGE TOOLBAR -->
						<div class="page-toolbar">
							<!-- BEGIN THEME PANEL -->
							<div class="btn-group btn-theme-panel">
								<a href="javascript:;" class="btn dropdown-toggle"
									data-toggle="dropdown"> <i class="icon-settings"></i>
								</a>
								<div
									class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
									<div class="row">
										<div class="col-md-6 col-sm-6 col-xs-12">
											<h3>THEME COLORS</h3>
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="theme-colors">
														<li class="theme-color theme-color-default"
															data-theme="default"><span class="theme-color-view"></span>
															<span class="theme-color-name">Default</span></li>
														<li class="theme-color theme-color-blue-hoki"
															data-theme="blue-hoki"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Blue Hoki</span></li>
														<li class="theme-color theme-color-blue-steel"
															data-theme="blue-steel"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Blue Steel</span></li>
														<li class="theme-color theme-color-yellow-orange"
															data-theme="yellow-orange"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Orange</span></li>
														<li class="theme-color theme-color-yellow-crusta"
															data-theme="yellow-crusta"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Yellow Crusta</span></li>
													</ul>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<ul class="theme-colors">
														<li class="theme-color theme-color-green-haze"
															data-theme="green-haze"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Green Haze</span></li>
														<li class="theme-color theme-color-red-sunglo"
															data-theme="red-sunglo"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Red Sunglo</span></li>
														<li class="theme-color theme-color-red-intense"
															data-theme="red-intense"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Red Intense</span></li>
														<li class="theme-color theme-color-purple-plum"
															data-theme="purple-plum"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Purple Plum</span></li>
														<li class="theme-color theme-color-purple-studio"
															data-theme="purple-studio"><span
															class="theme-color-view"></span> <span
															class="theme-color-name">Purple Studio</span></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12 seperator">
											<h3>LAYOUT</h3>
											<ul class="theme-settings">
												<li>Theme Style <select
													class="theme-setting theme-setting-style form-control input-sm input-small input-inline tooltips"
													data-original-title="Change theme style"
													data-container="body" data-placement="left">
														<option value="boxed" selected="selected">Square
															corners</option>
														<option value="rounded">Rounded corners</option>
												</select>
												</li>
												<li>Layout <select
													class="theme-setting theme-setting-layout form-control input-sm input-small input-inline tooltips"
													data-original-title="Change layout type"
													data-container="body" data-placement="left">
														<option value="boxed" selected="selected">Boxed</option>
														<option value="fluid">Fluid</option>
												</select>
												</li>
												<li>Top Menu Style <select
													class="theme-setting theme-setting-top-menu-style form-control input-sm input-small input-inline tooltips"
													data-original-title="Change top menu dropdowns style"
													data-container="body" data-placement="left">
														<option value="dark" selected="selected">Dark</option>
														<option value="light">Light</option>
												</select>
												</li>
												<li>Top Menu Mode <select
													class="theme-setting theme-setting-top-menu-mode form-control input-sm input-small input-inline tooltips"
													data-original-title="Enable fixed(sticky) top menu"
													data-container="body" data-placement="left">
														<option value="fixed">Fixed</option>
														<option value="not-fixed" selected="selected">Not
															Fixed</option>
												</select>
												</li>
												<li>Mega Menu Style <select
													class="theme-setting theme-setting-mega-menu-style form-control input-sm input-small input-inline tooltips"
													data-original-title="Change mega menu dropdowns style"
													data-container="body" data-placement="left">
														<option value="dark" selected="selected">Dark</option>
														<option value="light">Light</option>
												</select>
												</li>
												<li>Mega Menu Mode <select
													class="theme-setting theme-setting-mega-menu-mode form-control input-sm input-small input-inline tooltips"
													data-original-title="Enable fixed(sticky) mega menu"
													data-container="body" data-placement="left">
														<option value="fixed" selected="selected">Fixed</option>
														<option value="not-fixed">Not Fixed</option>
												</select>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- END THEME PANEL -->
						</div>
						<!-- END PAGE TOOLBAR -->
					</div>
				</div>
				<!-- END PAGE HEAD-->
				<!-- BEGIN PAGE CONTENT BODY -->
				<div class="page-content">
					<div class="container">
						<!-- BEGIN PAGE BREADCRUMBS -->
						<ul class="page-breadcrumb breadcrumb">
							<li><a href="index.html">Home</a> <i class="fa fa-circle"></i>
							</li>
							<li><a href="#">More</a> <i class="fa fa-circle"></i></li>
							<li><a href="#">Tables</a> <i class="fa fa-circle"></i></li>
							<li><span>Datatables</span></li>
						</ul>
						<!-- END PAGE BREADCRUMBS -->
						<form:form action="updateDepartment" commandName="packCmd" method="post"  id="student-form" enctype="multipart/form-data">
						<form:hidden path="id"  />
						Department name <form:input path="name" placeholder="Enter Department Name" class="form-control onlyCharacters" tabindex="1"/>
						Department email <form:input path="email" placeholder="Enter Deprtment Email " class="form-control onlyCharacters" tabindex="1" />
						Department Head <form:input path="departmentHead" placeholder="Enter Department Head" class="form-control onlyCharacters" tabindex="1" />
					Parent Department	<form:select path="parentid" tabindex="4" class="form-control">
															<form:option value="">-- Choose Accommodation --</form:option>
															<form:options items="${department}"></form:options>
														</form:select>
														<form:select path="parentid1" tabindex="4" class="form-control" style="display:none">
															<form:option value="">-- Choose Accommodation --</form:option>
															<form:options items="${department}"></form:options>
														</form:select>
														<br>
						<input type="submit" id="submitId" class="btn btn-success" value="Register" tabindex="25"/>
						</form:form>
						<!-- BEGIN PAGE CONTENT INNER -->
						<div class="page-content-inner">
							<div class="row">
								<div class="col-md-12">
									<!-- BEGIN EXAMPLE TABLE PORTLET-->
									<div class="portlet light portlet-fit ">
										<div class="portlet-title">
											<div class="caption">
												<i class="icon-settings font-red"></i> <span
													class="caption-subject font-red sbold uppercase">Editable
													Table</span>
											</div>
											<div class="actions">
												<div class="btn-group btn-group-devided"
													data-toggle="buttons">
													<label
														class="btn btn-transparent red btn-outline btn-circle btn-sm active">
														<input type="radio" name="options" class="toggle"
														id="option1">Actions
													</label> <label
														class="btn btn-transparent red btn-outline btn-circle btn-sm">
														<input type="radio" name="options" class="toggle"
														id="option2">Settings
													</label>
												</div>
											</div>
										</div>
										<div class="portlet-body">
											<div class="table-toolbar">
												<div class="row">
													<div class="col-md-6">
														<div class="btn-group">
															<button id="sample_editable_1_new" class="btn green">
																Add New <i class="fa fa-plus"></i>
															</button>
														</div>
													</div>
													<div class="col-md-6">
														<div class="btn-group pull-right">
															<button class="btn green btn-outline dropdown-toggle"
																data-toggle="dropdown">
																Tools <i class="fa fa-angle-down"></i>
															</button>
															<ul class="dropdown-menu pull-right">
																<li><a href="javascript:;"> Print </a></li>
																<li><a href="javascript:;"> Save as PDF </a></li>
																<li><a href="javascript:;"> Export to Excel </a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div id="tableId">
												<table
													class="table table-striped table-hover table-bordered editableTable" 
													id="sample_editable_1">
													<thead>
														<tr>
															<th>Department Name</th>
															<th>Email</th>
															<th>Department Head</th>
															<th>Parent Department</th>
															<th>Edit</th>
															<th>Delete</th>
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
							</div>
						</div>
						<!-- END PAGE CONTENT INNER -->
					</div>
				</div>
				<!-- END PAGE CONTENT BODY -->
				<!-- END CONTENT BODY -->
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN QUICK SIDEBAR -->
			<a href="javascript:;" class="page-quick-sidebar-toggler"> <i
				class="icon-login"></i>
			</a>
			<div class="page-quick-sidebar-wrapper"
				data-close-on-body-click="false">
				<div class="page-quick-sidebar">
					<ul class="nav nav-tabs">
						<li class="active"><a href="javascript:;"
							data-target="#quick_sidebar_tab_1" data-toggle="tab"> Users <span
								class="badge badge-danger">2</span>
						</a></li>
						<li><a href="javascript:;" data-target="#quick_sidebar_tab_2"
							data-toggle="tab"> Alerts <span class="badge badge-success">7</span>
						</a></li>
						<li class="dropdown"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"> More <i
								class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu pull-right">
								<li><a href="javascript:;"
									data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-bell"></i> Alerts
								</a></li>
								<li><a href="javascript:;"
									data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-info"></i> Notifications
								</a></li>
								<li><a href="javascript:;"
									data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-speech"></i> Activities
								</a></li>
								<li class="divider"></li>
								<li><a href="javascript:;"
									data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-settings"></i> Settings
								</a></li>
							</ul></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active page-quick-sidebar-chat"
							id="quick_sidebar_tab_1">
							<div class="page-quick-sidebar-chat-users" data-rail-color="#ddd"
								data-wrapper-class="page-quick-sidebar-list">
								<h3 class="list-heading">Staff</h3>
								<ul class="media-list list-items">
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">8</span>
										</div> <img class="media-object"
										src="/assets/layouts/layout/img/avatar3.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Bob Nilson</h4>
											<div class="media-heading-sub">Project Manager</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="/assets/layouts/layout/img/avatar1.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Nick Larson</h4>
											<div class="media-heading-sub">Art Director</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-danger">3</span>
										</div> <img class="media-object"
										src="/assets/layouts/layout/img/avatar4.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Deon Hubert</h4>
											<div class="media-heading-sub">CTO</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="/assets/layouts/layout/img/avatar2.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Ella Wong</h4>
											<div class="media-heading-sub">CEO</div>
										</div></li>
								</ul>
								<h3 class="list-heading">Customers</h3>
								<ul class="media-list list-items">
									<li class="media">
										<div class="media-status">
											<span class="badge badge-warning">2</span>
										</div> <img class="media-object"
										src="/assets/layouts/layout/img/avatar6.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Lara Kunis</h4>
											<div class="media-heading-sub">CEO, Loop Inc</div>
											<div class="media-heading-small">Last seen 03:10 AM</div>
										</div>
									</li>
									<li class="media">
										<div class="media-status">
											<span class="label label-sm label-success">new</span>
										</div> <img class="media-object"
										src="../assets/layouts/layout/img/avatar7.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Ernie Kyllonen</h4>
											<div class="media-heading-sub">
												Project Manager, <br> SmartBizz PTL
											</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="../assets/layouts/layout/img/avatar8.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Lisa Stone</h4>
											<div class="media-heading-sub">CTO, Keort Inc</div>
											<div class="media-heading-small">Last seen 13:10 PM</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">7</span>
										</div> <img class="media-object"
										src="../assets/layouts/layout/img/avatar9.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Deon Portalatin</h4>
											<div class="media-heading-sub">CFO, H&D LTD</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="/assets/layouts/layout/img/avatar10.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Irina Savikova</h4>
											<div class="media-heading-sub">CEO, Tizda Motors Inc</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-danger">4</span>
										</div> <img class="media-object"
										src="/assets/layouts/layout/img/avatar11.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Maria Gomez</h4>
											<div class="media-heading-sub">Manager, Infomatic Inc</div>
											<div class="media-heading-small">Last seen 03:10 AM</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="page-quick-sidebar-item">
								<div class="page-quick-sidebar-chat-user">
									<div class="page-quick-sidebar-nav">
										<a href="javascript:;" class="page-quick-sidebar-back-to-list">
											<i class="icon-arrow-left"></i>Back
										</a>
									</div>
									<div class="page-quick-sidebar-chat-user-messages">
										<div class="post out">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:15</span>
												<span class="body"> When could you send me the report
													? </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:15</span>
												<span class="body"> Its almost done. I will be
													sending it shortly </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:15</span>
												<span class="body"> Alright. Thanks! :) </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:16</span>
												<span class="body"> You are most welcome. Sorry for
													the delay. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:17</span>
												<span class="body"> No probs. Just take your time :)
												</span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:40</span>
												<span class="body"> Alright. I just emailed it to
													you. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:17</span>
												<span class="body"> Great! Thanks. Will check it
													right away. </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:40</span>
												<span class="body"> Please let me know if you have
													any comment. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="../assets/layouts/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:17</span>
												<span class="body"> Sure. I will check and buzz you
													if anything needs to be corrected. </span>
											</div>
										</div>
									</div>
									<div class="page-quick-sidebar-chat-user-form">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Type a message here...">
											<div class="input-group-btn">
												<button type="button" class="btn green">
													<i class="icon-paper-clip"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane page-quick-sidebar-alerts"
							id="quick_sidebar_tab_2">
							<div class="page-quick-sidebar-alerts-list">
								<h3 class="list-heading">General</h3>
								<ul class="feeds list-items">
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														You have 4 pending tasks. <span
															class="label label-sm label-warning "> Take action
															<i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">Just now</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-success">
															<i class="fa fa-bar-chart-o"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">Finance Report for year 2013 has
															been released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-danger">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														New order received with <span
															class="label label-sm label-success"> Reference
															Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">30 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														Web server hardware needs to be upgraded. <span
															class="label label-sm label-warning"> Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">2 hours</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-default">
															<i class="fa fa-briefcase"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">IPO Report for year 2013 has been
															released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
								</ul>
								<h3 class="list-heading">System</h3>
								<ul class="feeds list-items">
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														You have 4 pending tasks. <span
															class="label label-sm label-warning "> Take action
															<i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">Just now</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-danger">
															<i class="fa fa-bar-chart-o"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">Finance Report for year 2013 has
															been released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-default">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														New order received with <span
															class="label label-sm label-success"> Reference
															Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">30 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-warning">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														Web server hardware needs to be upgraded. <span
															class="label label-sm label-default "> Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">2 hours</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-info">
															<i class="fa fa-briefcase"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">IPO Report for year 2013 has been
															released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="tab-pane page-quick-sidebar-settings"
							id="quick_sidebar_tab_3">
							<div class="page-quick-sidebar-settings-list">
								<h3 class="list-heading">General Settings</h3>
								<ul class="list-items borderless">
									<li>Enable Notifications <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="success" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
									<li>Allow Tracking <input type="checkbox"
										class="make-switch" data-size="small" data-on-color="info"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Log Errors <input type="checkbox" class="make-switch"
										checked data-size="small" data-on-color="danger"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Auto Sumbit Issues <input type="checkbox"
										class="make-switch" data-size="small" data-on-color="warning"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Enable SMS Alerts <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="success" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
								</ul>
								<h3 class="list-heading">System Settings</h3>
								<ul class="list-items borderless">
									<li>Security Level <select
										class="form-control input-inline input-sm input-small">
											<option value="1">Normal</option>
											<option value="2" selected>Medium</option>
											<option value="e">High</option>
									</select>
									</li>
									<li>Failed Email Attempts <input
										class="form-control input-inline input-sm input-small"
										value="5" />
									</li>
									<li>Secondary SMTP Port <input
										class="form-control input-inline input-sm input-small"
										value="3560" />
									</li>
									<li>Notify On System Error <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="danger" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
									<li>Notify On SMTP Error <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="warning" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
								</ul>
								<div class="inner-content">
									<button class="btn btn-success">
										<i class="icon-settings"></i> Save Changes
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END QUICK SIDEBAR -->
		</div>
		<!-- END CONTAINER -->
	</div>
</div>

<script type="text/javascript">
	var listOrders1 = ${allOrders1};
	if (listOrders1 != "") {
		displayTable(listOrders1);
	}
	function displayTable(listOrders) {
		$('#sample_editable_1').html('');
		var tableHead = '<table 	class="table table-striped table-hover table-bordered"	id="sample_editable_1">'
				+ '<thead><tr><th>Department Name</th><th>Email</th> <th>Department Head</th><th>Parent Department</th><th>Edit</th><th>Delete</th>	</tr></thead><tbody></tbody></table>';
		$('#sample_editable_1').html(tableHead);
		serviceUnitArray = {};
		$
				.each(
						listOrders,
						function(i, orderObj) {
							serviceUnitArray[orderObj.departmentId] = orderObj;
							var id = '"' + orderObj.departmentId + '"';
							var tblRow = "<tr >"
									+ "<td  id='"+orderObj.departmentId+"name'"+" title='"+orderObj.name+"'>"
									+ orderObj.name
									+ "</td>"
									+ "<td   id='"+orderObj.departmentId+"email'"+" title='"+orderObj.email+"'>"
									+ orderObj.email
									+ "</td>"
									+ "<td  id='"+orderObj.departmentId+"departmentHead'"+" title='"+orderObj.departmentHead+"'>"
									+ orderObj.departmentHead
									+ "</td>"
									+ "<td  id='"+orderObj.parentName+"parentid'"+" class='hidden-sm hidden-xs' title='"+orderObj.parentName+"'>"
									+ orderObj.parentName
									+ "</td>"
									+ "<td ><a  onclick='updateDepartment("
									+ orderObj.departmentId
									+ ")'>edit </a></td>"
									+ "<td><a  onclick='deleteDepartment("
									+ orderObj.departmentId
									+ ")'>Delete </a></td>" + "</tr >";
							$(tblRow).appendTo("#sample_editable_1 tbody");
						});
	}
	function updateDepartment(id) {
		var dummy = $("#parentid1").html();
		$("#parentid").empty();
		$(dummy).appendTo("#parentid");	
		$("#parentid option[value="+serviceUnitArray[id].departmentId+"]").hide();
		$("#id").val(serviceUnitArray[id].departmentId);
		$("#name").val(serviceUnitArray[id].name);
		$('#email').val(serviceUnitArray[id].email);
		$('#departmentHead').val(serviceUnitArray[id].departmentHead);
		$('#parentid').val(serviceUnitArray[id].parentid);
		$('#parentid').trigger("chosen:updated");
		}
	/* $(function() {
		$("td").dblclick(function() {
							var OriginalContent = $(this).text();
							$(this).addClass("cellEditing");
							$(this)
									.html(
											"<input type='text' value='" + OriginalContent + "' />");
							$(this).children().first().focus();
							$(this).children().first().keypress(
									function(e) {
										if (e.which == 13) {
											var newContent = $(this).val();
											$(this).parent().text(newContent);
											$(this).parent().removeClass(
													"cellEditing");
										}
									});
							$(this).children().first().blur(function() {
								$(this).parent().text(OriginalContent);
								$(this).parent().removeClass("cellEditing");
							});
						});
	}); */
</script>