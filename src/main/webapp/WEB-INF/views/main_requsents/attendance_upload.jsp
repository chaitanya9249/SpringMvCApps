<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Attendance Uploading</title>
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
					
					<form:form action="upploadAttendance" modelAttribute="attendance" method="post" role="form">
						<div class="cmp-tb-hd cmp-int-hd">
							<h2>Attendance Sheet Uploading</h2>
						</div>
						
						<form:input type="hidden" name="fileId" path="fileId" id="fileId" value="${attendance.fileId}" />
						
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <div class="form-example-int form-example-st">
                                    <div class="form-group">
                                        <div class="nk-int-st">
                                            <form:input type="text" path="filePath" name="filePath" value="${attendance.filePath}" class="form-control input-sm" placeholder="Enter File Path" />
                                        </div>
                                    </div>
                                </div>
                            </div>
							
							 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <div class="form-example-int form-example-st">
                                    <div class="form-group">
                                        <div class="nk-int-st">
                                            <input type="file" name="uploadButton" id="uploadBtnId" />
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