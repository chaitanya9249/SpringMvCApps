<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Holidays List</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/notika-master/img/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/owl.theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/owl.transitions.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/meanmenu/meanmenu.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/summernote/summernote.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/themesaller-forms.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/normalize.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/notika-custom-icon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/bootstrap-select/bootstrap-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/datapicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/color-picker/farbtastic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/chosen/chosen.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/notification/notification.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/dropzone/dropzone.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/wave/waves.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/responsive.css">
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/vendor/modernizr-2.8.3.min.js"></script>
    
    <!-- Tables -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/wave/button.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/jquery.dataTables.min.css">
    
    
    <!-- Load jQuery JS -->
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<!-- Load jQuery UI Main JS -->
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	
	<script>
		$(function() {
			$("#holidayStatus").val($("#holidayStatusId").val());
			$('#alertMessageId').delay(3000).fadeOut();
		});
	</script>
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
					
					<!-- Alert Message -->
						<div class="alert-inner mg-t-30" id="alertMessageId">
							<div class="alert-list">
								<c:if test="${fn:length(errorMessage) gt 0}">
									<div class="alert alert-danger alert-dismissible alert-mg-b-0" role="alert">${errorMessage}</div>
								</c:if>

								<c:if test="${fn:length(successMessage) gt 0}">
									<div class="alert alert-success alert-dismissible" role="alert">${successMessage}</div>
								</c:if>
							</div>
						</div>					
					
					<form:form action="saveHoliday" modelAttribute="holidays" method="post">
						<div class="cmp-tb-hd cmp-int-hd">
							<h2>Holidays</h2>
						</div>
						
						<form:input type="hidden" name="holidaysId" path="holidaysId" id="holidaysId" value="${holidays.holidaysId}" />
						
						<div class="form-example-int form-horizental mg-t-15">
							<div class="form-group">
								<div class="row">
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
										<label class="hrzn-fm">Holiday Name</label>
									</div>
									<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
										<div class="nk-int-st">
											<form:input type="text" path="holidayName" name="holidayName" value="${holidays.holidayName}" id="holidayNameId" class="form-control input-sm" placeholder="Enter Designation Name" />
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-example-int form-horizental mg-t-15">
							<div class="form-group">
								<div class="row">
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
										<label class="hrzn-fm">Holiday Date</label>
									</div>
									<div class="form-group ic-cmp-int">
										<div class="form-ic-cmp">
											<i class="notika-icon notika-calendar"></i>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												
												<fmt:formatDate value="${holidays.holidayDate}" pattern="dd/mm/yyyy" var="holidayDateVal" />
												
												<form:input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy" 
												path="holidayDate" name="holidayDate" value="${holidayDateVal}" id="holidayDate" />
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
									<label class="hrzn-fm">Holiday Type</label>
								</div>
								<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12 bootstrap-select fm-cmp-mg">
									<form:select class="selectpicker" data-live-search="true"
											path="holidayStatus" name="holidayStatus" value="${holidays.holidayStatus}" id="holidayStatusId">
										<option>Holiday</option>
										<option>Optional Holiday</option>
									</form:select>
								</div>
								<input type="hidden" id="holidayStatusId" value="${holidayStatusVal}" />
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
                                        <th>NAME</th>
                                        <th>DATE</th>
                                        <th>STATUS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <c:forEach items="${listOfHolidays}" var="holidaysList">
										<tr>
											<td><a href="editHolidays?holidaysId=<c:out value='${holidaysList.holidaysId}'/>"><c:out value="${holidaysList.holidaysId}" /></a></td>
											<td><c:out value="${holidaysList.holidayName}" /></td>
											<td><fmt:formatDate value="${holidaysList.holidayDate}" pattern="dd/mm/yyyy" /></td>
											<td><c:out value="${holidaysList.holidayStatus}" /></td>
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
	
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/jquery-price-slider.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/jquery.scrollUp.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/meanmenu/jquery.meanmenu.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/counterup/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/counterup/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/counterup/counterup-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/sparkline/sparkline-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/flot/jquery.flot.resize.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/flot/flot-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/knob/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/knob/jquery.appear.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/knob/knob-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/jasny-bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/icheck/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/icheck/icheck-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/rangle-slider/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/rangle-slider/jquery-ui-touch-punch.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/rangle-slider/rangle-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/datapicker/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/datapicker/datepicker-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/bootstrap-select/bootstrap-select.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/color-picker/farbtastic.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/color-picker/color-picker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/notification/bootstrap-growl.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/notification/notification-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/summernote/summernote-updated.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/summernote/summernote-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/dropzone/dropzone.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/wave/waves.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/wave/wave-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/chosen/chosen.jquery.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/chat/jquery.chat.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/todo/jquery.todo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/tawk-chat.js"></script>
    
    
    <!-- Tables -->
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/data-table/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/data-table/data-table-act.js"></script>
</body>
</html>