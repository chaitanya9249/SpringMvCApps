<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Leave Request</title>
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

	<div class="form-element-area form-example-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="form-example-wrap mg-t-30">
					
					<form:form action="sendLeaveRequest" modelAttribute="leaveRequest" method="post">
						<div class="cmp-tb-hd cmp-int-hd">
							<h2>Leave Request</h2>
						</div>
						
						<form:input type="hidden" name="leaveRequestId" path="leaveRequestId" id="leaveRequestId" value="${leaveRequest.leaveRequestId}" />
						
						<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Date of request</label>
										</div>
										<div class="form-group ic-cmp-int">
											<div class="form-ic-cmp">
												<i class="notika-icon notika-calendar"></i>
											</div>
											<div class="nk-int-st">
												<%-- <form:input type="text" name="leaveRequestDate" path="leaveRequestDate" id="leaveRequestDate" 
												value="${leaveRequest.leaveRequestDate}" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy" /> --%>
													
												<fmt:formatDate value="${leaveRequest.leaveRequestDate}" pattern="dd/mm/yyyy" var="leaveRequestDateVal" />
												
												<form:input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy" 
												path="leaveRequestDate" name="leaveRequestDate" value="${leaveRequestDateVal}" id="leaveRequestDateId" />
													
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">From</label>
										</div>
										<div class="form-group ic-cmp-int">
											<div class="form-ic-cmp">
												<i class="notika-icon notika-calendar"></i>
											</div>
											<div class="nk-int-st">
												<%-- <form:input type="text" name="leaveFromDate" path="leaveFromDate" 
												id="leaveFromDate" value="${leaveRequest.leaveFromDate}" class="form-control" data-mask="99/99/9999" 
												placeholder="dd/mm/yyyy" /> --%>
												
												<fmt:formatDate value="${leaveRequest.leaveFromDate}" pattern="dd/mm/yyyy" var="leaveFromDateVal" />
												
												<form:input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy" 
												path="leaveFromDate" name="leaveFromDate" value="${leaveFromDateVal}" id="leaveFromDateId" />
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">To</label>
										</div>
										<div class="form-group ic-cmp-int">
											<div class="form-ic-cmp">
												<i class="notika-icon notika-calendar"></i>
											</div>
											<div class="nk-int-st">
												<%-- <form:input type="text" name="leaveToDate"
													path="leaveToDate" id="leaveRequestDate"
													value="${leaveRequest.leaveToDate}" class="form-control"
													data-mask="99/99/9999" placeholder="dd/mm/yyyy" /> --%>
												
												<fmt:formatDate value="${leaveRequest.leaveToDate}" pattern="dd/mm/yyyy" var="leaveToDateVal" />
												
												<form:input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy"
													path="leaveToDate" name="leaveToDate" value="${leaveToDateVal}" id="leaveToDateId" />
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
											<form:textarea type="text" path="reason" name="reason" value="${leaveRequest.reason}" id="reason" class="form-control input-sm" placeholder="Enter Reason" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-example-int mg-t-15">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12"></div>
								<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
									<button class="btn btn-success notika-btn-success">Submit</button>
								</div>
							</div>
						</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Table -->
		<div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                        </div>
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>SNO</th>
                                        <th>Employ Code</th>
                                        <th>Employ Name</th>
                                        <th>Department Name</th>
                                        <th>Designation Name</th>
                                        <th>Leave Request Date</th>
                                        <th>Leave Start Date</th>
                                        <th>Leave End Date</th>
                                        <th>Leave Status</th>
                                    </tr>
                                </thead>
                                <tbody>
									<c:forEach items="${leaveRequestList}" var="leaveRequestList">
										<tr>
											<td><a href="editLeaveRequest?leaveRequestId=<c:out value='${leaveRequestList.leaveRequestId}'/>"><c:out value="${leaveRequestList.leaveRequestId}" /></a></td>
											<td><c:out value="${leaveRequestList.employCode}" /></td>
											<td><c:out value="${leaveRequestList.employName}" /></td>
											<td><c:out value="${leaveRequestList.departmentName}" /></td>
											<td><c:out value="${leaveRequestList.designationName}" /></td>
											<td><fmt:formatDate value="${leaveRequestList.leaveRequestDate}" pattern="dd/mm/yyyy" /></td>
											<td><fmt:formatDate value="${leaveRequestList.leaveFromDate}" pattern="dd/mm/yyyy" /></td>
											<td><fmt:formatDate value="${leaveRequestList.leaveToDate}" pattern="dd/mm/yyyy" /></td>
											<td><c:out value="${leaveRequestList.leaveStatus}" /></td>
										</tr>
									</c:forEach>
                                </tbody>
                            </table>
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