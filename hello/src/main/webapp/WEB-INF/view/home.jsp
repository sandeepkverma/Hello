<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="app">

<head>
<meta charset="utf-8" />
<title>myproject - MapmyIndia Tracking Solution</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrapv3.3.6.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/icon.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/stroke-gap.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/datatable/css/jquery.dataTables.min.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/datatable/css/buttons.dataTables.min.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/map.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css"type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/repoalarm.css" type="text/css" />

</head>

<body class="">
	<section class="vbox">
		<header
			class="bg-dark header header-md navbar navbar-fixed-top-xs box-shadow">
			<div class="navbar-header aside-md dk">
				<a class="btn btn-link visible-xs"
					data-toggle="class:nav-off-screen" data-target="#nav"> <i
					class="fa fa-bars"></i>
				</a> <a href="" class="navbar-brand home"> <img
					src="images/logo.png" class="m-r-sm" alt="mapmyindia">
				</a> <a class="btn btn-link visible-xs" data-toggle="dropdown"
					data-target=".user"> <i class="fa fa-cog"></i>
				</a>
			</div>
			<ul class="nav navbar-nav hidden-xs hidden-lg">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="i i-grid"></i>
				</a>
					<section
						class="dropdown-menu aside-lg bg-white on animated fadeInLeft">
						<div class="row m-l-none m-r-none m-t m-b text-center">
							<div class="col-xs-4">
								<div class="padder-v">
									<a href="#"> <span class="m-b-xs block"> <i
											class="i i-mail i-2x text-primary-lt"></i>
									</span> <small class="text-muted">Mailbox</small>
									</a>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="padder-v">
									<a href="#"> <span class="m-b-xs block"> <i
											class="i i-calendar i-2x text-danger-lt"></i>
									</span> <small class="text-muted">Calendar</small>
									</a>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="padder-v">
									<a href="#"> <span class="m-b-xs block"> <i
											class="i i-map i-2x text-success-lt"></i>
									</span> <small class="text-muted">Map</small>
									</a>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="padder-v">
									<a href="#"> <span class="m-b-xs block"> <i
											class="i i-paperplane i-2x text-info-lt"></i>
									</span> <small class="text-muted">Trainning</small>
									</a>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="padder-v">
									<a href="#"> <span class="m-b-xs block"> <i
											class="i i-images i-2x text-muted"></i>
									</span> <small class="text-muted">Photos</small>
									</a>
								</div>
							</div>
							<div class="col-xs-4">
								<div class="padder-v">
									<a href="#"> <span class="m-b-xs block"> <i
											class="i i-clock i-2x text-warning-lter"></i>
									</span> <small class="text-muted">Timeline</small>
									</a>
								</div>
							</div>
						</div>
					</section></li>
			</ul>
			<form
				class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs hidden"
				role="search">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-btn">
							<button type="submit"
								class="btn btn-sm bg-white b-white btn-icon">
								<i class="fa fa-search"></i>
							</button>
						</span> <input type="text" class="form-control input-sm no-border"
							placeholder="Search apps, projects...">
					</div>
				</div>
			</form>
			<ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user user">
				<li class="hidden-xs"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="i i-chat3"></i> <span
						class="badge badge-sm up bg-danger count">2</span>
				</a>
					<section class="dropdown-menu aside-xl animated flipInY">
						<section class="panel bg-white">
							<div class="panel-heading b-light bg-light">
								<strong>You have <span class="count">2</span>
									notifications
								</strong>
							</div>
							<div class="list-group list-group-alt">
								<a href="#" class="media list-group-item"> <span
									class="pull-left thumb-sm"> <img src="images/a0.png"
										alt="..." class="img-circle">
								</span> <span class="media-body block m-b-none"> Use awesome
										animate.css <br> <small class="text-muted">10
											minutes ago</small>
								</span>
								</a> <a href="#" class="media list-group-item"> <span
									class="media-body block m-b-none"> 1.0 initial released
										<br> <small class="text-muted">1 hour ago</small>
								</span>
								</a>
							</div>
							<div class="panel-footer text-sm">
								<a href="#" class="pull-right"><i class="fa fa-cog"></i></a> <a
									href="#notes" data-toggle="class:show animated fadeInRight">See
									all the notifications</a>
							</div>
						</section>
					</section></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <span class="thumb-sm avatar pull-left">
							<img src="images/a0.png" alt="...">
					</span> ${user.displayname} <b class="caret"></b>
				</a>
					<ul class="dropdown-menu animated fadeInRight">
						<li><span class="arrow top"></span> <a href="#">Settings</a>
						</li>
						<li><a href="#">Profile</a></li>
						<li><a href="#"> <span class="badge bg-danger pull-right">3</span>
								Notifications
						</a></li>
						<li><a href="#">Help</a></li>
						<li class="divider"></li>
						<li><a href="logout.php">Logout</a></li>
					</ul></li>
			</ul>
		</header>
		<section>
			<section class="hbox stretch">
				<!-- .aside -->
				<aside class="bg-black aside-md hidden-print nav-xs" id="nav">
					<section class="vbox">
						<section class="w-f scrollable">
							<div class="slim-scroll" data-height="auto"
								data-disable-fade-out="true" data-distance="0" data-size="10px"
								data-railOpacity="0.2">
								<!-- nav -->
								<nav class="nav-primary hidden-xs">
									<ul class="nav nav-main" data-ride="collapse">
										<li><a href="#dashboard" id="dashboardbutton"
											class="auto dashboard"> <i class="fa fa-dashboard"></i> <span
												class="font-bold">Dashboard</span>
										</a></li>
										<li><a href="#vehicle" class="auto vehiclesearch"> <span
												class="pull-right text-muted"> <i
													class="i i-circle-sm-o text"></i> <i
													class="i i-circle-sm text-active"></i>
											</span> <i class="icon icon-Antenna2"></i> <span class="font-bold">Live</span>
										</a></li>
										<li><a href="#history" class="auto history"> <span
												class="pull-right text-muted"> <i
													class="i i-circle-sm-o text"></i> <i
													class="i i-circle-sm text-active"></i>
											</span> <i class="fa fa-history"></i> <span class="font-bold">History</span>
										</a></li>
										<li><a href="#report" class="auto"> <span
												class="pull-right text-muted"> <i
													class="i i-circle-sm-o text"></i> 
													<i class="i i-circle-sm text-active"></i>
											</span> <i class="fa fa-file-text-o"></i> </i> <span class="font-bold">Report</span>
										</a>
											<ul class="nav dk">
												<li id="reportbtn"><span class="arrow left"></span> <a
													href="#reportvehicle" class="auto report-vehicle"> <i
														class="i i-dot"></i></i> <span>Vehicle</span>
												</a></li>
												<!--                                                    <li>
                                                        <a href="report-vehicle.html" class="auto"> <b class="badge bg-dark pull-right">369</b> <i class="i i-dot"></i></i>
                                                            <span>Vehicle Group</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="report-vehicle.html" class="auto"> <i class="i i-dot"></i></i>
                                                            <span>Drivers</span>
                                                        </a>
                                                                                                        </li>-->

											</ul></li>
										<li id="alarmbtn"><a href="#alarms" class="auto alarm">
												<span class="pull-right text-muted"> <i
													class="i i-circle-sm-o text"></i> <i
													class="i i-circle-sm text-active"></i>
											</span> <i class="fa fa-bell-o"></i> <span class="font-bold">Alarms</span>
										</a></li>

									</ul>

									<div class="line dk hidden-nav-xs"></div>
								</nav>
								<!-- / nav -->
							</div>
						</section>
						<footer class="footer hidden-xs no-padder text-center-nav-xs">
							<a href="modal.lockme.html" data-toggle="ajaxModal"
								class="btn btn-icon icon-muted btn-inactive pull-right m-l-xs m-r-xs hidden-nav-xs">
								<i class="i i-logout"></i>
							</a> <a href="#nav" data-toggle="class:nav-xs"
								class="btn btn-icon icon-muted btn-inactive m-l-xs m-r-xs">
								<i class="i i-circleleft text"></i> <i
								class="i i-circleright text-active"></i>
							</a>
						</footer>
					</section>
				</aside>
				<!-- /.aside -->
				<!-- /home page start -->
				<section id="main">
					<section class="vbox">
						<section>
							<section class="hbox stretch">
								<!-- begin vehicle search -->
								<aside class="aside-lg bg-dark vehicle-search animated "
									id="vehicle-search">
									<a style="right: -32px;" href="#vehicle-search"
										data-toggle="class:vehicle-search-xs"
										class="btn btn-icon icon-muted btn-inactive close-btn"> <i
										class="fa fa-angle-double-left text"></i> <i
										class="fa fa-angle-double-right text-active"></i>
									</a>
									<!-- <a href="#" class="btn btn-icon m-l-xs m-r-xs close-btn"> <i class="fa fa-close"></i> </a> -->
									<div class="vbox">


										<section class="w-f scrollable">
											<div class="slim-scroll" data-height="auto"
												data-disable-fade-out="true" data-distance="0"
												data-size="10px" data-railOpacity="0.2">
												<header class="header clearfix">
													<h4>
														<span class="icon icon-Car"></span>Vehicles
													</h4>
													<div class="btn-group form-group ">
														<button data-toggle="dropdown"
															class="btn btn-sm btn-default dropdown-toggle align-left device-select">
															<span class="fa fa-caret-down " style="margin: 0px"></span>
														</button>
														<ul
															class="dropdown-menu dropdown-select col-md-12 animated fadeInLeft">
															<li><span class="arrow top" style="left: 21px;"></span>
																<a href="#"> <input name="d-s-c-1" type="checkbox">
																	Option1
															</a></li>
															<li><a href="#"> <input name="d-s-c-2"
																	type="checkbox"> Option2
															</a></li>
															<li><a href="#"> <input name="d-s-c-3"
																	type="checkbox"> Option3
															</a></li>
														</ul>
													</div>
													<!-- <form method="post" id="geocoding_form" class="m-t-md m-b-md">
                                                            <div class="input-group">
                                                                <input type="text" id="address" name="address" class="input-lg form-control" placeholder="find your vehicles....">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-lg btn-default" type="submit">
                                                                        <span class="icon icon-Search"></span>
                                                                    </button>
                                                                </span>
                                                            </div>
                                                        </form>-->
													<ul id="instructions" class="list-unstyled fa-ul">
													</ul>
												</header>
												<section class="vbox">
													<table id="livetable" class="display" cellspacing="0"
														width=99%">
														<thead>
															<tr>
																<th>VehicleId</th>
																<th>Date/Time</th>
																<th>On/Off</th>
															</tr>
														</thead>

														<tbody id="tblivetable">


														</tbody>
													</table>
												</section>
												<footer class="hidden-xs no-padder text-center-nav-xs ">
												</footer>
											</div>
										</section>
									</div>
								</aside>
								<!-- end vehicle search -->
								<!-- begin history -->
								<aside class="aside-lg bg-dark vehicle-search animated "
									id="history-search">
									<a style="right: -32px;" href="#history-search"
										data-toggle="class:vehicle-search-xs"
										class="btn btn-icon icon-muted btn-inactive close-btn"> <i
										class="fa fa-angle-double-left text"></i> <i
										class="fa fa-angle-double-right text-active"></i>
									</a>
									<div class="vbox">
										<section class="w-f scrollable" data-height="auto"
											data-disable-fade-out="true" data-distance="0"
											data-size="10px" data-railOpacity="0.2">
											<div class="slim-scroll" data-height="auto"
												data-disable-fade-out="true" data-distance="0"
												data-size="10px" data-railOpacity="0.2">
												<header class="header clearfix">
													<h4>
														<span class="icon icon-Car"></span>Vehicles
													</h4>
													<!-- <form method="post" id="geocoding_form" class="m-t-md m-b-md">
                                                            <div class="input-group">
                                                                <input type="text" id="address" name="address" class="input-lg form-control" placeholder="find your vehicles....">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-lg btn-default" type="submit">
                                                                        <span class="icon icon-Search"></span>
                                                                    </button>
                                                                </span>
                                                            </div>
                                                        </form>-->
													<ul id="instructions" class="list-unstyled fa-ul">
													</ul>
												</header>
												<div class="history-form">
													<div class="btn-group form-group">
														<h6>Vehicle</h6>
														<button data-toggle="dropdown"
															class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
															<span class="dropdown-label pull-left"
																data-placeholder="Please select">Please select</span> <span
																class="caret pull-right" style="margin-top: 6px;"></span>
														</button>
														<ul class="dropdown-menu dropdown-select col-md-11"
															id="hisvhehiclelist">
															<li><a href="#"> <input name="d-s-c-1"
																	type="radio">Option1
															</a></li>
															<li><a href="#"> <input name="d-s-c-1"
																	type="radio">Option2
															</a></li>
															<li><a href="#"> <input name="d-s-c-1"
																	type="radio">Option3
															</a></li>
															<li><a href="#"> <input name="d-s-c-1"
																	type="radio">Option4
															</a></li>
															<li><a href="#"> <input name="d-s-c-1"
																	type="radio">Option5
															</a></li>
														</ul>
													</div>
												</div>
												<div class="row s-e-t">


													<div class=" col-md-6">
														<h6>Start Time</h6>
														<div class="input-group date" id="hisstarttime">
															<input type="text" class="form-control" /> <span
																class="input-group-addon btn btn-default"><i
																class="i i-calendar"></i></span>
														</div>
													</div>
													<div class=" col-md-6">
														<h6>End Time</h6>
														<div class="input-group date" id="hisendtime">
															<input type="text" class="form-control" /> <span
																class="input-group-addon btn btn-default"><i
																class="i i-calendar"></i></span>
														</div>
													</div>

												</div>

												<div class="form-group">
													<div class="row col-sm-6">
														<button type="button" class="btn  btn-primary"
															id="generatehistory">Generate</button>
													</div>
												</div>
												<section class="vbox">

													<div class="header vehicle-filter clearfix">
														Trip Details <span class="pull-right"><b
															id="hivehiclename"></b></span>
													</div>
													<ul
														class="vehicle-list auto no-radius m-b-none m-t-n-xxs list-group-lg pull-left"
														id="ultriplist">

													</ul>
												</section>
											</div>
										</section>
										<footer class="hidden-xs no-padder text-center-nav-xs ">
										</footer>
									</div>
								</aside>

								<!-- end history -->

								<section id="home" class="map">
									<section id="map_live" style="min-height: 240px; height: 100%;">
									</section>
									<section id="map_history"
										style="min-height: 240px; height: 100%; display: none;">
									</section>
									<!--                                        <section class="layer-toolbar on animated fadeInLeft" id="layer-toolbar">
                                            <a href="#layer-toolbar" data-toggle="class:layer-toolbar-xs" data-toggle="dropdown" class="btn btn-icon icon-muted btn-inactive layer-btn dropdown-toggle">
                                                <i class="fa fa-angle-double-left text"></i> <i class="fa fa-angle-double-right text-active"></i> </a>
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <span data-original-title="Offline" data-toggle="tooltip" data-placement="top" title="" class="fa fa-car"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span data-original-title="Offline" data-toggle="tooltip" data-placement="top" title="" class="fa fa-map-marker"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span data-original-title="Offline" data-toggle="tooltip" data-placement="top" title="" class="fa fa-map"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <span data-original-title="Offline" data-toggle="tooltip" data-placement="top" title="" class="fa fa-crosshairs"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span data-original-title="Offline" data-toggle="tooltip" data-placement="top" title="" class="fa fa-file-pdf-o"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span data-original-title="Offline" data-toggle="tooltip" data-placement="top" title="" class="fa fa-print"></span>
                                                    </a>
                                                </li>
                                            </ul>

                                                                                </section>-->

								</section>
							</section>
						</section>
						<footer class="activity filtertool row">
							<div class="col-md-8 pull-right">
								<!-- .moving -->
								<div class="moving  pull-right col-md-2">
									<input type="checkbox" value="moving" id="mapmoving" status="1"
										class="filter" /> <label for="mapmoving">0</label>
								</div>
								<!-- end .moving -->
								<!-- .moving -->
								<div class="idle pull-right col-md-2">
									<input type="checkbox" value="idle" id="mapidle" status="2"
										class="filter" /> <label for="mapidle">0</label>
								</div>
								<!-- end .moving -->
								<!-- .moving -->
								<div class="stopped pull-right col-md-2">
									<input type="checkbox" value="stopped" id="mapstopped"
										status="3" class="filter" /> <label for="mapstopped">0</label>
								</div>
								<!-- end .moving -->
								<!-- .moving -->
								<div class="towing pull-right col-md-2">
									<input type="checkbox" value="towing" id="maptowing" status="4"
										class="filter" /> <label for="maptowing">0</label>
								</div>
								<!-- end .moving -->
								<!-- .moving -->
								<div class="nodata  pull-right col-md-2">
									<input type="checkbox" value="nodata" id="mapnodata" status="5"
										class="filter" /> <label for="mapnodata">0</label>
								</div>
								<!-- end .moving -->
								<!-- end .moving -->
							</div>

							<div class="col-md-4 zoom-in pull-right">
								<ul>
									<li><a href="#"><i class="fa fa-plus"></i></a></li>
									<li><a href="#"><i class="fa fa-minus"></i></a></li>
									<li><a href="#"> <label> <input
												type="checkbox" name="checkbox" value="value">&nbsp;&nbsp;Auto
												Zoom
										</label>
									</a></li>
								</ul>
							</div>

						</footer>
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen" data-target="#nav"></a>

				</section>
				<!-- /dashboard page start -->
				<section id="dashboard">
					<section class="vbox">
						<section class="scrollable padder">
							<div class="m-b-md">
								<h3 class="m-b-none">Dashboard</h3>
							</div>
							<section class="panel panel-default">
								<header class="panel-heading">
									Filter Vehicles <i class="fa fa-info-sign text-muted"
										data-toggle="tooltip" data-placement="bottom"
										data-title="ajax to load the data."></i>
									<div class="pull-right export" style="margin-top: -8px;">
										<button data-toggle="dropdown"
											class="btn btn-sm btn-default dropdown-toggle align-left">
											<span class="dropdown-label pull-left"
												data-placeholder="Please select">Export &nbsp;&nbsp;</span>
											<span class="caret pull-right" style="margin-top: 6px;"></span>
										</button>
										<ul class="dropdown-menu dropdown-select">
											<li><span class="arrow top expt"></span> <a href="#"
												onclick="$('#dashboard .buttons-excel').click();"
												id="buttons-excel"> <input name="d-s-c-1"
													type="checkbox"><i class="fa fa-file-excel-o"></i>&nbsp;&nbsp;&nbsp;&nbsp;
													Excel
											</a></li>
											<li><a href="#"
												onclick="$('#dashboard .buttons-pdf').click()"> <input
													name="d-s-c-2" type="checkbox"><i
													class="fa fa-file-pdf-o"></i> &nbsp;&nbsp;&nbsp;&nbsp;Pdf
											</a></li>
											<li><a href="#"
												onclick="$('#dashboard .buttons-print').click()"> <input
													name="d-s-c-3" type="checkbox"><i
													class="fa fa-print"></i> &nbsp;&nbsp;&nbsp;&nbsp;Print
											</a></li>

										</ul>
									</div>
									<div class="col-md-6 pull-right" style="margin-top: -5px;">
										<!-- .moving -->
										<div class="moving pull-right col-md-2">
											<input value="moving" id="moving" name="status"
												type="checkbox"> <label for="moving"
												id="movinglabel"></label>
										</div>
										<!-- end .moving -->
										<!-- .moving -->
										<div class="idle pull-right col-md-2">
											<input value="idle" id="idle" name="status" type="checkbox">
											<label for="idle" id="idlelabel"></label>
										</div>
										<!-- end .moving -->
										<!-- .moving -->
										<div class="stopped pull-right col-md-2">
											<input value="stopped" id="stopped" name="status"
												type="checkbox"> <label for="stopped"
												id="stoppedlabel"></label>
										</div>
										<!-- end .moving -->
										<!-- .moving -->
										<div class="towing pull-right col-md-2">
											<input value="towing" id="towing" name="status"
												type="checkbox"> <label for="towing"
												id="towinglabel"></label>
										</div>
										<!-- end .moving -->
										<!-- .moving -->
										<div class="nodata pull-right col-md-2">
											<input value="nodata" id="nodata" name="status"
												type="checkbox"> <label for="nodata"
												id="nodatalabel"></label>
										</div>
										<!-- end .moving -->
									</div>

								</header>
								<div class="table-responsive" style="width: 100%;">
									<table class="table table-striped m-b-none"
										data-ride="datatables" id="datatables">

										<thead>

											<tr>
												<th width="10%">Name</th>
												<th width="5%">Speed</th>
												<th width="20%">Address</th>
												<th width="15%">Date Time</th>
												<th width="20%">Status</th>
												<th width="10%">GPS</th>
												<th width="10%">Power</th>
												<th width="10%">Battery</th>
											</tr>

										</thead>
										<tbody>

										</tbody>
									</table>
								</div>
							</section>
						</section>

					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen" data-target="#nav"></a>



				</section>

				<!-- /report vehicle page start -->
				<section id="report-vehicle">
					<section class="vbox">
						<section>
							<section class="hbox stretch">
								<aside class="aside-lg bg-dark vehicle-search animated "
									id="report-search">
									<a style="right: -32px;" href="#report-search"
										data-toggle="class:vehicle-search-xs"
										class="btn btn-icon icon-muted btn-inactive close-btn"> <i
										class="fa fa-angle-double-left text"></i> <i
										class="fa fa-angle-double-right text-active"></i>
									</a>

									<section class="w-f scrollable">
										<div>
											<header class="header clearfix">
												<h4>
													<span class="icon icon-Car"></span>Report Vehicle
												</h4>
												<ul id="instructions" class="list-unstyled fa-ul">
												</ul>
											</header>
											<div class="report-form">
												<div class="btn-group form-group">
													<h6>Report</h6>
													<button data-toggle="dropdown"
														class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
														<span class="dropdown-label pull-left"
															data-placeholder="Please select">Select Report</span> <span
															class="caret pull-right" style="margin-top: 6px;"></span>
													</button>
													<ul class="dropdown-menu dropdown-select col-md-11"
														id="reportlist"></ul>
												</div>
												<div class="btn-group form-group" id="repovehicleselect">
													<h6>Vehicle</h6>
													<button data-toggle="dropdown"
														class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
														<span class="dropdown-label pull-left"
															data-placeholder="Please select">Select Vehicle</span> <span
															class="caret pull-right" style="margin-top: 6px;"></span>
													</button>
													<ul class="dropdown-menu dropdown-select col-md-11"
														id="repovehiclelist"></ul>
												</div>
												<div class="row s-e-t" id="repodateselect">


													<div class="col-md-12">
														<h6>Start Time</h6>
														<div class="input-group date datefield-report"
															id="datepickerstarttime">
															<input type="text" class="form-control" id="starttime" />
															<span class="input-group-addon btn btn-default "><i
																class="i i-calendar"></i></span>
														</div>
													</div>
													<div class="col-md-12">
														<h6>End Time</h6>
														<div class="input-group date datefield-report"
															id="datepickerendtime">
															<input type="text" class="form-control" id="endtime" />
															<span class="input-group-addon btn btn-default"><i
																class="i i-calendar"></i></span>
														</div>
													</div>
												</div>
												<br>
												<div class="form-group">
													<div class="row col-sm-6">
														<button type="submit" class="btn  btn-primary"
															id="reportgenerate">Generate</button>
													</div>
												</div>
											</div>
											<footer class="hidden-xs no-padder text-center-nav-xs ">
											</footer>
										</div>
									</section>
								</aside>
								<section class="report_vehicle map">


									<section class="scrollable padder" id="reportview">
										<!--                                            <div class="m-b-md align-right">
                                                <h3 class="m-b-none">Trips and drives report</h3>
                                                                                            <span>Generation Time: <span id="dashtime"></span></span>
                                            </div>

                                            <section class="panel panel-default">
                                                <header class="panel-heading">
                                                    Filter Vehicles
                                                    <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
                                                    <div class="pull-right export">
                                                        <button data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle align-left">
                                                            <span class="dropdown-label pull-left" data-placeholder="Please select">Export &nbsp;&nbsp;</span>
                                                            <span class="caret pull-right" style="margin-top:6px;"></span>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-select">
                                                            <li>
                                                                <span class="arrow top expt"></span>
                                                                <a href="#">
                                                                    <input name="d-s-c-1" type="checkbox"><i class="fa fa-file-excel-o"></i>&nbsp;&nbsp;&nbsp;&nbsp; Excel</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <input name="d-s-c-2" type="checkbox"><i class="fa fa-file-pdf-o"></i> &nbsp;&nbsp;&nbsp;&nbsp;Pdf</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <input name="d-s-c-3" type="checkbox"><i class="fa fa-print"></i> &nbsp;&nbsp;&nbsp;&nbsp;Print</a>
                                                            </li>

                                                        </ul>
                                                    </div>

                                                </header>
                                                <div class="table-responsive">
                                                    <table class="table table-striped m-b-none" data-ride="datatables">
                                                        <thead>
                                                            <tr>
                                                                <th width="10%">Name</th>
                                                                <th width="5%">Speed</th>
                                                                <th width="20%">Address</th>
                                                                <th width="15%">Date Time</th>
                                                                <th width="20%">Status</th>
                                                                <th width="10%">GPS</th>
                                                                <th width="10%">Power</th>
                                                                <th width="10%">Battery</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                                                        </section>-->
									</section>

								</section>
							</section>
						</section>
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen" data-target="#nav"></a>
				</section>
				<!-- /alarm page start -->
				<section id="alarm">
					<section class="vbox">
						<section>
							<section class="hbox stretch">
								<aside class="aside-lg bg-dark vehicle-search animated"
									id="alarm-search">
									<a style="right: -32px;" href="#alarm-search"
										data-toggle="class:vehicle-search-xs"
										class="btn btn-icon icon-muted btn-inactive close-btn active">
										<i class="fa fa-angle-double-left text"></i> <i
										class="fa fa-angle-double-right text-active"></i>
									</a>
									<header class="header clearfix">
										<h4>
											<i class="fa fa-bell-o"></i>Alarms
										</h4>
										<ul id="instructions" class="list-unstyled fa-ul">
										</ul>
									</header>
									<div class="alarmform">
										<ul class="nav nav-tabs">
											<li class="active"><a data-toggle="tab"
												href="#create-alarm">Create Alarm</a></li>
										</ul>
										<div class="tab-content">
											
											<div id="create-alarm" class="tab-pane fade in active">
												<h5 class="bold">Select Alarm Type</h5>
												<%-- <form class="" action="#" method="post" id="alarmform"> --%>
													<div class="form-group">
														<button data-toggle="dropdown"
															class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
															<span class="dropdown-label pull-left"
																data-placeholder="Please select">Please select</span> <span
																class="caret pull-right" style="margin-top: 6px;"></span>
														</button>
														<ul class="dropdown-menu dropdown-select col-md-11"
															id="alarmlist">

														</ul>
													</div>

													<div class="form-group">
														<label class="col-sm-12 row control-label">Select
															Vehicle</label>
														<button data-toggle="dropdown"
															class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
															<span class="dropdown-label pull-left"
																data-placeholder="Please select">Please select</span> <span
																class="caret pull-right" style="margin-top: 6px;"></span>
														</button>
														<ul class="dropdown-menu dropdown-select col-md-11"
															id="alarmvehiclelist">
														</ul>
													</div>
													<div class="form-group">
														<label class="col-sm-12 row control-label">Select
															Mobile</label>
														<button data-toggle="dropdown"
															class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
															<span class="dropdown-label pull-left"
																data-placeholder="Please select">Mobile No</span> <span
																class="caret pull-right" style="margin-top: 6px;"></span>
														</button>
														<ul class="dropdown-menu dropdown-select col-md-11"
															id="alarmmobilelist">

														</ul>
													</div>
													<div class="form-group">
														<label class="col-sm-12 row control-label">Select
															Email</label>
														<button data-toggle="dropdown"
															class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
															<span class="dropdown-label pull-left"
																data-placeholder="Please select">Email ID</span> <span
																class="caret pull-right" style="margin-top: 6px;"></span>
														</button>
														<ul class="dropdown-menu dropdown-select col-md-11"
															id="alarmemaillist">

														</ul>
													</div>
													
													<br>
													<div class="form-group">
														<div class="row col-sm-6">
														<!-- <input type="submit" class="btn  btn-primary" value="Generate"/> -->
															<button class="btn  btn-primary" id="alarmgenerate">Generate</button> 
														</div>

													</div>
												<%-- </form> --%>
											</div>
										</div>
									</div>
									<!--</div>-->
								</aside>
								<section class="map" style="">
									<section class="panel panel-default alarm-panel"
										style="margin-bottom: 9px;">
										<header class="panel-heading bg-light">
											<ul class="nav nav-tabs nav-justified">
												<li class="active"><a href="#myalarm" data-toggle="tab">My
														Alarms</a></li>
												<li><a href="#alarmlog" id="alarmlogbutton"
													data-toggle="tab" onclick="Alarms.initialize();"
													disabled="disabled">Alarm Log</a></li>
											</ul>
										</header>
										<div class="panel-body">
											<div class="tab-content">
												<div class="tab-pane active" id="myalarm">
													<section class="scrollable padder">
														<div class="form-group">
															<label class="row control-label">Select Vehicle</label>
															<button data-toggle="dropdown"
																class="btn btn-sm btn-default dropdown-toggle"
																style="margin-left: 25px">
																<span class="dropdown-label"
																	data-placeholder="Select Vehicle"></span> <span
																	class="caret pull-right" style="margin-top: 6px;"></span>
															</button>
															<ul class="dropdown-menu dropdown-select"
																id="alarmvehicleselect"></ul>
														</div>
														<!--                                                            <div class="m-b-md row">
                                                                <div class="col-md-2 ">
                                                                    <h6>Start Time</h6>
                                                                                                                                <div class="input-group date">
                                                                        <input class="form-control" type="text">
                                                                        <span class="input-group-addon btn btn-default"><i class="i i-calendar"></i></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <h6>End Time</h6>
                                                                                                                                <div class="input-group date">
                                                                        <input class="form-control" type="text">
                                                                        <span class="input-group-addon btn btn-default"><i class="i i-calendar"></i></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <h6>Read Status</h6>
                                                                    <div class="form-group">
                                                                        <button data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
                                                                            <span class="dropdown-label pull-left" data-placeholder="Please select">Please select</span>
                                                                            <span class="caret pull-right" style="margin-top:6px;"></span>
                                                                        </button>
                                                                        <ul class="dropdown-menu dropdown-select col-md-11">
                                                                            <li>
                                                                                <a href="#geofence-form" class="goefence-check" data-toggle="class:geofence-form">
                                                                                    <input name="d-s-r" type="radio">Geofence</a>
                                                                            </li>
                                                                            <li class="">
                                                                                <a href="#">
                                                                                    <input name="d-s-r" type="radio">Option2</a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <input name="d-s-r" type="radio">Option3</a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div class=" col-md-2">
                                                                    <h6>Alarms</h6>
                                                                    <div class="form-group">
                                                                        <button data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
                                                                            <span class="dropdown-label pull-left" data-placeholder="Please select">Please select</span>
                                                                            <span class="caret pull-right" style="margin-top:6px;"></span>
                                                                        </button>
                                                                        <ul class="dropdown-menu dropdown-select col-md-11">
                                                                            <li>
                                                                                <a href="#geofence-form" class="goefence-check" data-toggle="class:geofence-form">
                                                                                    <input name="d-s-r" type="radio">Geofence</a>
                                                                            </li>
                                                                            <li class="">
                                                                                <a href="#">
                                                                                    <input name="d-s-r" type="radio">Option2</a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <input name="d-s-r" type="radio">Option3</a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div class=" col-md-2">
                                                                    <h6>Vehicle</h6>
                                                                    <div class="form-group">
                                                                        <button data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
                                                                            <span class="dropdown-label pull-left" data-placeholder="Please select">Please select</span>
                                                                            <span class="caret pull-right" style="margin-top:6px;"></span>
                                                                        </button>
                                                                        <ul class="dropdown-menu dropdown-select col-md-11">
                                                                            <li>
                                                                                <a href="#geofence-form" class="goefence-check" data-toggle="class:geofence-form">
                                                                                    <input name="d-s-r" type="radio">Geofence</a>
                                                                            </li>
                                                                            <li class="">
                                                                                <a href="#">
                                                                                    <input name="d-s-r" type="radio">Option2</a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <input name="d-s-r" type="radio">Option3</a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <h6>&nbsp;</h6>
                                                                    <button type="submit" class="btn  btn-primary">Generate</button>
                                                                </div>
                                                                                                                        </div>-->
														<section class="panel panel-default" id="myalarmview"></section>
													</section>

												</div>

												<div class="tab-pane" id="alarmlog">
													<!-- <img src="images/loderimg.gif" />-->
													<section class="scrollable padder">
														<div class="m-b-md row">
															<div class="col-md-2 ">
																<h6>Start Time</h6>
																<div class="input-group date date-field">
																	<input type="text" id="log-starttime"
																		class="form-control" data-format="DD-MM-YYYY HH:mm:ss" />
																	<span class="input-group-addon btn btn-default"><i
																		class="i i-calendar"></i></span>
																</div>


															</div>

															<div class="col-md-2">
																<h6>End Time</h6>
																<div class="input-group date date-field">
																	<input class="form-control" type="text"
																		id="log-endtime" data-format="DD-MM-YYYY HH:mm:ss" />
																	<span class="input-group-addon btn btn-default"><i
																		class="i i-calendar"></i></span>
																</div>
															</div>
															<div class="col-md-2">
																<h6>Read Status</h6>
																<div class="form-group">
																	<button data-toggle="dropdown"
																		class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
																		<span class="dropdown-label pull-left"
																			data-placeholder="Please select">Please select</span>
																		<span class="caret pull-right"
																			style="margin-top: 6px;"></span>
																	</button>
																	<ul class="dropdown-menu dropdown-select col-md-11">

																		<li class=""><a href="#"> <input
																				name="read-status" type="radio" value="1">Finished
																		</a></li>
																		<li><a href="#"> <input name="read-status"
																				type="radio" value="0">Pending
																		</a></li>
																	</ul>
																</div>
															</div>
															<div class=" col-md-2">
																<h6>Alarm</h6>
																<div class="form-group" id="alarmtype">
																	<button data-toggle="dropdown"
																		class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
																		<span class="dropdown-label pull-left"
																			data-placeholder="Please select">Please select</span>
																		<span class="caret pull-right"
																			style="margin-top: 6px;"></span>
																	</button>
																	<ul class="dropdown-menu dropdown-select col-md-11">

																	</ul>
																</div>
															</div>
															<div class=" col-md-2">
																<h6>Vehicle</h6>
																<div class="form-group" id="alarm-log-vehicle">
																	<button data-toggle="dropdown"
																		class="btn btn-sm btn-default dropdown-toggle col-md-12 align-left">
																		<span class="dropdown-label pull-left"
																			data-placeholder="Please select">Please select</span>
																		<span class="caret pull-right"
																			style="margin-top: 6px;"></span>
																	</button>
																	<ul class="dropdown-menu dropdown-select col-md-11">

																	</ul>
																</div>
															</div>
															<div class="col-md-2">
																<h6>&nbsp;</h6>
																<button type="button" class="btn  btn-primary"
																	onclick="Alarms.generateReport();" id="alarmsreportlog"
																	disabled="true">Generate</button>
															</div>
														</div>
														<section class="panel panel-default">
															<header class="panel-heading">
																Filter Vehicles <i class="fa fa-info-sign text-muted"
																	data-toggle="tooltip" data-placement="bottom"
																	data-title="ajax to load the data."></i>
															</header>
															<div class="table-responsive">
																<!-- <div id="wait" class="ajaxloader"> <img src='images/loderimg.gif'></div>-->

																<table class="table table-striped m-b-none"
																	data-ride="datatables" id="alarm-log-datatable">
																	<thead>
																		<tr>
																			<th width="10%">Vehicle Name</th>
																			<th width="15%">Date Time</th>
																			<th width="4%">Latitude</th>
																			<th width="4%">Longitude</th>
																			<th width="5%">Location</th>
																			<th width="12%">Alert Type</th>
																			<th width="20%">Description</th>
																			<!--<th width="10%">Current Data</th>-->
																			<th width="5%">Status</th>
																		</tr>
																	</thead>
																	<tbody>
																	</tbody>
																</table>
															</div>

															<!-- <div id="dialog-form" title="Show Location">-->
												</div>
									</section>
								</section>
								</div>

								</div>
								</div>
							</section>
							<section id="gmap_geocoding1" class=""
								style="min-height: 240px; height: 100%;"></section>
							<section class="report_vehicle edit-geofence-xs"></section>

							<!--                                        <section class="edit-geofence row edit-geofence-xs" id="edit-geofence">
                                            <a href="#edit-geofence" data-toggle="class:edit-geofence-xs" class="btn btn-icon icon-muted btn-inactive geofence-up-down"> <i class="i i-circledown text"></i> <i class="i i-circleup text-active"></i> </a>
                                            <div class="wf scrollable geofence-data" data-railOpacity="0.2">
                                                <table class="table table-striped b-t b-light slim-scroll" data-railOpacity="0.2" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" style="width:100% !important;">
                                                    <thead>
                                                        <tr>
                                                            <th width="20">
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox">
                                                                    <i></i></label>
                                                            </th>
                                                            <th class="th-sortable" data-toggle="class">Project
                                                                <span class="th-sort"> <i class="fa fa-sort-down text"></i> <i class="fa fa-sort-up text-active"></i> <i class="fa fa-sort"></i> </span>
                                                            </th>
                                                            <th>Task</th>
                                                            <th>Date</th>
                                                            <th width="30"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Idrawfast</td>
                                                            <td>4c</td>
                                                            <td>Jul 25, 2013</td>
                                                            <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Formasa</td>
                                                            <td>8c</td>
                                                            <td>Jul 22, 2013</td>
                                                            <td><a href="#" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Avatar system</td>
                                                            <td>15c</td>
                                                            <td>Jul 15, 2013</td>
                                                            <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Throwdown</td>
                                                            <td>4c</td>
                                                            <td>Jul 11, 2013</td>
                                                            <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Idrawfast</td>
                                                            <td>4c</td>
                                                            <td>Jul 7, 2013</td>
                                                            <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Formasa</td>
                                                            <td>8c</td>
                                                            <td>Jul 3, 2013</td>
                                                            <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Avatar system </b>
                                                            </td>
                                                            <td>15c</td>
                                                            <td>Jul 2, 2013</td>
                                                            <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label class="checkbox m-n i-checks">
                                                                    <input type="checkbox" name="post[]">
                                                                    <i></i></label>
                                                            </td>
                                                            <td>Videodown</td>
                                                            <td>4c</td>
                                                            <td>Jul 1, 2013</td>
                                                            <td><a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </section>-->
							<section class="layer-toolbar on animated fadeInLeft "
								id="layer-toolbar-alarm">
								<a href="#layer-toolbar-alarm"
									data-toggle="class:layer-toolbar-xs" data-toggle="dropdown"
									class="btn btn-icon icon-muted btn-inactive layer-btn dropdown-toggle">
									<i class="fa fa-angle-double-left text"></i> <i
									class="fa fa-angle-double-right text-active"></i>
								</a>
								<ul>
									<li><a href="#"> <span data-original-title="Offline"
											data-toggle="tooltip" data-placement="top" title=""
											class="fa fa-mouse-pointer"></span>
									</a></li>
									<li><a href="#"> <span data-original-title="Offline"
											data-toggle="tooltip" data-placement="top" title=""
											class="fa fa-map-marker"></span>
									</a></li>
									<li><a href="#"> <span data-original-title="Offline"
											data-toggle="tooltip" data-placement="top" title=""
											class="icon icon-Edit"></span>
									</a></li>
								</ul>
								<ul>
									<li><a href="#"> <span data-original-title="Offline"
											data-toggle="tooltip" data-placement="top" title=""
											class="fa fa-crosshairs"></span>
									</a></li>
									<li><a href="#"> <span data-original-title="Offline"
											data-toggle="tooltip" data-placement="top" title=""
											class="fa fa-file-pdf-o"></span>
									</a></li>
									<li><a href="#"> <span data-original-title="Offline"
											data-toggle="tooltip" data-placement="top" title=""
											class="fa fa-print"></span>
									</a></li>
								</ul>

							</section>

						</section>
					</section>
				</section>
			</section>

			<a href="#" class="hide nav-off-screen-block"
				data-toggle="class:nav-off-screen" data-target="#nav"></a>
		</section>
	</section>
	</section>
	</section>
	<!-- preloader -->
	<!-- <div class="preloader"></div> -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

	<!-- datatables -->

	<script src="${pageContext.request.contextPath}/js/datatables/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables/jszip.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables/pdfmake.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables/vfs_fonts.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables/buttons.html5.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables/buttons.print.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
	<script src="${pageContext.request.contextPath}/js/alarms.js"></script>

	<!-- App -->
	<script src="${pageContext.request.contextPath}/js/app.js"></script>
	<script src="${pageContext.request.contextPath}/js/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/report.js"></script>
	<script src="${pageContext.request.contextPath}/js/myalarm.js"></script>
	<!--

        <script src="js/app.plugin.js"></script>


        <!--start bootstrap date time pickerel-->
	<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
	<!--end bootstrap date time pickerel-->


	<!--start leaflet-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/leaflet-0.7.3/leaflet-mmi.min.css" type="text/css"/>
	<script src="${pageContext.request.contextPath}/js/leaflet-0.7.3/leaflet-mmi.min.js"></script>

	<!--end leaflet-->

	<!--start moving marker-->
	<script src="${pageContext.request.contextPath}/js/movingmarker/MovingMarker.js"></script>
	<!--end moving marker-->

	<!--start custome js-->
	<script src="${pageContext.request.contextPath}/js/custom/ajaxCall.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom/map.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom/leafmap.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom/history.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom/statushelper.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom/hashshow.js"></script>

	<!--end custome js-->

	<script>
		$(document).ready(
				function() {
					$.ajax({
			             type: "POST",
			             data: "",
			             url: "ajax/getdevicedata",
			             success: function (data) {
			            	 $myproject.deviceobj=data;	 
			            	 
			             }, error: function (xhr) {
			                 alert(xhr.responseText);
			             }
			         });

					myproject.ajax("api_name=mmi_livedata&aparam=true",
							myproject.callBack.vehicleList);

				});

		$(document).off("change", ".filter");
		$(document).on("change", ".filter", function() {
			var filter = {};

			var allCheckFlag = false;
			$(".filter").each(function() {
				var status = $(this).attr("status");
				if ($(this).prop("checked")) {
					allCheckFlag = true;
				}
				filter[status] = $(this).prop("checked");
			});
			filter["allcheck"] = allCheckFlag;
			myproject.leafMap.filterMarker(filter);
			myproject.map.changeStatus();
		});

		$('#livetable tbody').on('click', 'td a.details', function() {

			var tr = $(this).closest('tr');
			var deviceId = $(this).closest('tr').attr("deviceid");
			var row = myproject.map.table.row(tr);

			if (row.child.isShown()) {
				// This row is already open - close it
				row.child.hide();
				tr.removeClass('shown');
			} else {
				// Open this row
				row.child(myproject.map.format(deviceId)).show();
				tr.addClass('shown');
			}
		});

		$('#livetable tbody').on('click', '.track', function() {

			var deviceId = $(this).closest('tr').prev().attr("deviceid");
			var lat = myproject.map.getLiveVehicleList()[deviceId].latitude;
			var lng = myproject.map.getLiveVehicleList()[deviceId].longitude;
			myproject.leafMap.map.setView([ lat, lng ], 14);

		});

		//////////////////////////////            START EVENT         ///////////////////////////////////////////

		/////////////////////////////              END EVENT          //////////////////////////////////////////
	</script>
</body>

</html>
