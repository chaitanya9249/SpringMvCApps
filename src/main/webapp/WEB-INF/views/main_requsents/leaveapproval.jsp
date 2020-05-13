<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Leave Requests List</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="resources/notika-master/img/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="resources/notika-master/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/owl.carousel.css">
    <link rel="stylesheet" href="resources/notika-master/css/owl.theme.css">
    <link rel="stylesheet" href="resources/notika-master/css/owl.transitions.css">
    <link rel="stylesheet" href="resources/notika-master/css/meanmenu/meanmenu.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/animate.css">
    <link rel="stylesheet" href="resources/notika-master/css/summernote/summernote.css">
    <link rel="stylesheet" href="resources/notika-master/css/themesaller-forms.css">
    <link rel="stylesheet" href="resources/notika-master/css/normalize.css">
    <link rel="stylesheet" href="resources/notika-master/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/notika-custom-icon.css">
    <link rel="stylesheet" href="resources/notika-master/css/bootstrap-select/bootstrap-select.css">
    <link rel="stylesheet" href="resources/notika-master/css/datapicker/datepicker3.css">
    <link rel="stylesheet" href="resources/notika-master/css/color-picker/farbtastic.css">
    <link rel="stylesheet" href="resources/notika-master/css/chosen/chosen.css">
    <link rel="stylesheet" href="resources/notika-master/css/notification/notification.css">
    <link rel="stylesheet" href="resources/notika-master/css/dropzone/dropzone.css">
    <link rel="stylesheet" href="resources/notika-master/css/wave/waves.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/main.css">
    <link rel="stylesheet" href="resources/notika-master/style.css">
    <link rel="stylesheet" href="resources/notika-master/css/responsive.css">
    <script src="resources/notika-master/js/vendor/modernizr-2.8.3.min.js"></script>
    
    <!-- Tables -->
    <link rel="stylesheet" href="resources/notika-master/css/wave/button.css">
    <link rel="stylesheet" href="resources/notika-master/css/jquery.dataTables.min.css">
    
    
    <!-- Load jQuery JS -->
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<!-- Load jQuery UI Main JS -->
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>

<body>

	<!--Header Top Area -->
	<jsp:include page="/WEB-INF/views/templates/headerTemplate.jsp"></jsp:include>
	<!-- End Header Top Area -->

	<!-- Mobile Menu start -->
	<jsp:include page="/WEB-INF/views/templates/menuTemplate.jsp"></jsp:include>
	<!-- Mobile Menu end -->
	
    <!-- Data Table area Start-->
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                            <h2>Leave Approval</h2>
                        </div>
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr>
                                    <tr>
                                        <td>Garrett Winters</td>
                                        <td>Accountant</td>
                                        <td>Tokyo</td>
                                        <td>63</td>
                                        <td>2011/07/25</td>
                                        <td>$170,750</td>
                                    </tr>
                                    <tr>
                                        <td>Ashton Cox</td>
                                        <td>Junior Technical Author</td>
                                        <td>San Francisco</td>
                                        <td>66</td>
                                        <td>2009/01/12</td>
                                        <td>$86,000</td>
                                    </tr>
                                    <tr>
                                        <td>Cedric Kelly</td>
                                        <td>Senior Javascript Developer</td>
                                        <td>Edinburgh</td>
                                        <td>22</td>
                                        <td>2012/03/29</td>
                                        <td>$433,060</td>
                                    </tr>
                                    <tr>
                                        <td>Airi Satou</td>
                                        <td>Accountant</td>
                                        <td>Tokyo</td>
                                        <td>33</td>
                                        <td>2008/11/28</td>
                                        <td>$162,700</td>
                                    </tr>
                                    <tr>
                                        <td>Brielle Williamson</td>
                                        <td>Integration Specialist</td>
                                        <td>New York</td>
                                        <td>61</td>
                                        <td>2012/12/02</td>
                                        <td>$372,000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <!-- Data Table area End-->
    
    <!-- Modal View -->
    <div class="modals-area ">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="modals-list mg-t-30">
                        <div class="modals-single">
                            <%-- <div class="modals-hd">
                                <h2>Modals sizes</h2>
                                <p>Modals have two optional sizes, available via modifier classes to be placed on a <code>.modals-default, .modal-sm, .modal-large</code>.</p>
                            </div> --%>
                            <div class="modals-default-cl">
                                <!-- <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModalone">Modal Default</button>
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModaltwo">Modal Small</button> -->
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModalthree">Modal Large</button>
                                
                                <div class="modal fade form-element-area form-example-area" id="myModalthree" role="dialog">
                                    <div class="modal-dialog modal-large container">
                                        <div class="modal-content row">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
												<div class="form-example-int form-horizental mg-t-15">
													<div class="form-group">
														<div class="row">
															<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
																<label class="hrzn-fm">Employ Name</label>
															</div>
															<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
																<div class="nk-int-st">
																	<input type="text"  class="form-control input-sm" placeholder="Enter Designation Name" />
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="form-example-int form-horizental mg-t-15">
													<div class="form-group">
														<div class="row">
															<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
																<label class="hrzn-fm">Leave Requested Date</label>
															</div>
															<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
															<div class="form-group ic-cmp-int">
																<div class="form-ic-cmp">
																	<i class="notika-icon notika-calendar"></i>
																</div>
																<div class="nk-int-st">
																	<input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy">
																</div>
																</div>
															</div>
														</div>
													</div>
												</div>												
												
												<div class="form-example-int form-horizental mg-t-15">
													<div class="form-group">
														<div class="row">
															<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
																<label class="hrzn-fm">From Date</label>
															</div>
															<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
															<div class="form-group ic-cmp-int">
																<div class="form-ic-cmp">
																	<i class="notika-icon notika-calendar"></i>
																</div>
																<div class="nk-int-st">
																	<input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy">
																</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												
												
												<div class="form-example-int form-horizental mg-t-15">
													<div class="form-group">
														<div class="row">
															<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
																<label class="hrzn-fm">To Date</label>
															</div>
															<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
															<div class="form-group ic-cmp-int">
																<div class="form-ic-cmp">
																	<i class="notika-icon notika-calendar"></i>
																</div>
																<div class="nk-int-st">
																	<input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy">
																</div>
															</div>
															</div>
														</div>
													</div>
												</div>
												
												<div class="form-example-int form-horizental mg-t-15">
													<div class="form-group">
														<div class="row">
															<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
																<label class="hrzn-fm">Reason</label>
															</div>
															<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
																<div class="nk-int-st">
																	<input type="text"  class="form-control input-sm" placeholder="Enter Designation Name" />
																</div>
															</div>
														</div>
													</div>
												</div>
												
												<div class="form-example-int form-horizental mg-t-15">
													<div class="form-group">
														<div class="row">
															<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
																<label class="hrzn-fm">Approval Status</label>
															</div>
															<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12 bootstrap-select fm-cmp-mg">
																<select class="selectpicker" data-live-search="true" id="holidayStatusId">
																	<option>--Select--</option>
																	<option>Approved</option>
																	<option>On Hold</option>
																	<option>Not Approved</option>
																</select>
															</div>

														</div>
													</div>
												</div>
												
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Save changes</button>
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
    
    <!-- Start Footer area-->
	<jsp:include page="/WEB-INF/views/templates/footerTemplate.jsp"></jsp:include>
	<!-- End Footer area-->
	
	
    <script src="resources/notika-master/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="resources/notika-master/js/bootstrap.min.js"></script>
    <script src="resources/notika-master/js/wow.min.js"></script>
    <script src="resources/notika-master/js/jquery-price-slider.js"></script>
    <script src="resources/notika-master/js/owl.carousel.min.js"></script>
    <script src="resources/notika-master/js/jquery.scrollUp.min.js"></script>
    <script src="resources/notika-master/js/meanmenu/jquery.meanmenu.js"></script>
    <script src="resources/notika-master/js/counterup/jquery.counterup.min.js"></script>
    <script src="resources/notika-master/js/counterup/waypoints.min.js"></script>
    <script src="resources/notika-master/js/counterup/counterup-active.js"></script>
    <script src="resources/notika-master/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="resources/notika-master/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="resources/notika-master/js/sparkline/sparkline-active.js"></script>
    <script src="resources/notika-master/js/flot/jquery.flot.js"></script>
    <script src="resources/notika-master/js/flot/jquery.flot.resize.js"></script>
    <script src="resources/notika-master/js/flot/flot-active.js"></script>
    <script src="resources/notika-master/js/knob/jquery.knob.js"></script>
    <script src="resources/notika-master/js/knob/jquery.appear.js"></script>
    <script src="resources/notika-master/js/knob/knob-active.js"></script>
    <script src="resources/notika-master/js/jasny-bootstrap.min.js"></script>
    <script src="resources/notika-master/js/icheck/icheck.min.js"></script>
    <script src="resources/notika-master/js/icheck/icheck-active.js"></script>
    <script src="resources/notika-master/js/rangle-slider/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="resources/notika-master/js/rangle-slider/jquery-ui-touch-punch.min.js"></script>
    <script src="resources/notika-master/js/rangle-slider/rangle-active.js"></script>
    <script src="resources/notika-master/js/datapicker/bootstrap-datepicker.js"></script>
    <script src="resources/notika-master/js/datapicker/datepicker-active.js"></script>
    <script src="resources/notika-master/js/bootstrap-select/bootstrap-select.js"></script>
    <script src="resources/notika-master/js/color-picker/farbtastic.min.js"></script>
    <script src="resources/notika-master/js/color-picker/color-picker.js"></script>
    <script src="resources/notika-master/js/notification/bootstrap-growl.min.js"></script>
    <script src="resources/notika-master/js/notification/notification-active.js"></script>
    <script src="resources/notika-master/js/summernote/summernote-updated.min.js"></script>
    <script src="resources/notika-master/js/summernote/summernote-active.js"></script>
    <script src="resources/notika-master/js/dropzone/dropzone.js"></script>
    <script src="resources/notika-master/js/wave/waves.min.js"></script>
    <script src="resources/notika-master/js/wave/wave-active.js"></script>
    <script src="resources/notika-master/js/chosen/chosen.jquery.js"></script>
    <script src="resources/notika-master/js/chat/jquery.chat.js"></script>
    <script src="resources/notika-master/js/todo/jquery.todo.js"></script>
    <script src="resources/notika-master/js/plugins.js"></script>
    <script src="resources/notika-master/js/main.js"></script>
    <script src="resources/notika-master/js/tawk-chat.js"></script>
    
    
    <!-- Tables -->
    <script src="resources/notika-master/js/data-table/jquery.dataTables.min.js"></script>
    <script src="resources/notika-master/js/data-table/data-table-act.js"></script>
</body>

</html>