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
    <title>EMPLOY PROFILE</title>
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
    
    
    <!-- Image cropping -->    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/owl.transitions.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/cropper/cropper.min.css">
    
    <!-- Tables -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/wave/button.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notika-master/css/jquery.dataTables.min.css">
    
    
    <!-- Load jQuery JS -->
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<!-- Load jQuery UI Main JS -->
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	
	<script>
		$(function() 
		{
			$('#alertMessageId').delay(3000).fadeOut();
//			alert("Department ID ::: "+$('#departmentId').val());
//			console.log("Role iD is ::::: "+$('#empDesignationId').val());
			if($('#empDesignationId').val() == 1)
			{
				$('#departmentId').prop('disabled', false);
				$('#designationId').prop('disabled', false);
			}
			else if($('#empDesignationId').val()  == 2)
			{
				$('#departmentId').prop('disabled', 'disabled');
				$('#designationId').prop('disabled', 'disabled');
			}
		});
	</script>
</head>
<body>
	<!--Header Top Area -->
	<jsp:include page="/WEB-INF/views/templates/headerTemplate.jsp"></jsp:include>
	<!-- End Header Top Area -->

	<!-- Mobile Menu start -->
	<jsp:include page="/WEB-INF/views/templates/menuTemplate.jsp"></jsp:include>
<%--
    <c:if test="${userRoleId == 2 }">
		<jsp:include page="/WEB-INF/views/templates/usermenutemplate.jsp"></jsp:include>
	</c:if>--%>
	
	<!-- Mobile Menu end -->
	<div class="form-element-area form-example-area images-cropper-area">
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

						<form:form action="saveEmployee" modelAttribute="employeeProfile" method="post" enctype="multipart/form-data">
							<div class="cmp-tb-hd cmp-int-hd">
								<h2>EMPLOY PROFILE</h2>
							</div>

							<form:input type="hidden" name="empId" path="empId" id="empId" value="${employeeProfile.empId}" />
							
							<input type="hidden" value="${userRoleId}" id="empDesignationId">

							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Employ Code</label>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<form:input type="text" path="employCode"
													name="employCode" value="${employeeProfile.employCode}"
													id="employCode" class="form-control input-sm"
													placeholder="Enter Employ Code" readonly="true"/>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Employ Name</label>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<form:input type="text" path="employeeName"
													name="employeeName" value="${employeeProfile.employeeName}"
													id="employeeName" class="form-control input-sm"
													placeholder="Enter Employ Name" />
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">User Name</label>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<c:if test="${userRoleId ==1 }">
													<form:input type="text" path="empUserName" name="empUserName" value="${employeeProfile.empUserName}"
														id="empUserName" class="form-control input-sm" placeholder="Enter User Name" readonly="false"/>

												</c:if>

												<c:if test="${userRoleId ==2}">
													<form:input type="text" path="empUserName" name="empUserName" value="${employeeProfile.empUserName}"
														id="empUserName" class="form-control input-sm" placeholder="Enter User Name" readonly="true"/>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental mg-t-15">
							<div class="form-group">
								<div class="row">

									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
										<label class="hrzn-fm">Department</label>
									</div>
									<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12 bootstrap-select fm-cmp-mg">
											<c:if test="${userRoleId ==1 }">
												<form:select class="selectpicker" data-live-search="true"
													path="departmentId" items="${departmentList}" itemValue="departmentId" itemLabel="departmentName"
													value="${employeeProfile.departmentId}" id="departmentId" readonly="false">
												</form:select>
											</c:if>

											<c:if test="${userRoleId ==2 }">
												<form:select class="selectpicker" data-live-search="true"
													path="departmentId" items="${departmentList}"
													itemValue="departmentId" itemLabel="departmentName"
													value="${employeeProfile.departmentId}" id="departmentId"
													readonly="true">
												</form:select>
											</c:if>
										</div>
								</div>
							</div>
						</div>


							<div class="form-example-int form-horizental mg-t-15">
							<div class="form-group">
								<div class="row">
									<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
										<label class="hrzn-fm">Designation</label>
									</div>
									<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12 bootstrap-select fm-cmp-mg">
									<c:if test="${userRoleId ==1 }">
										<form:select class="selectpicker" data-live-search="true"
											path="designationId" items="${designationsList}"
											itemValue="designationId" itemLabel="designationName"
											value="${employeeProfile.designationId}" id="designationId" reaonly = "false">
										</form:select>
										</c:if>
										<c:if test="${userRoleId ==2 }">
										<form:select class="selectpicker" data-live-search="true"
											path="designationId" items="${designationsList}"
											itemValue="designationId" itemLabel="designationName"
											value="${employeeProfile.designationId}" id="designationId" reaonly = "true">
										</form:select>
										</c:if>
									</div>
								</div>
							</div>
						</div>

							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Date of birth</label>
										</div>
										<div class="form-group ic-cmp-int">
											<div class="form-ic-cmp">
												<i class="notika-icon notika-calendar"></i>
											</div>
											<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
														
												<fmt:formatDate value="${employeeProfile.dateOfBirth}" pattern="dd/mm/yyyy" var="dateOfBirthVar" />
												
												<form:input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy" 
												path="dateOfBirth" name="dateOfBirth" value="${dateOfBirthVar}" id="dateOfBirth" />
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
											<label class="hrzn-fm">Join Date</label>
										</div>
										<div class="form-group ic-cmp-int">
											<div class="form-ic-cmp">
												<i class="notika-icon notika-calendar"></i>
											</div>
											<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
											<c:if test="${userRoleId ==1 }">
												<fmt:formatDate value="${employeeProfile.dateOfJoining}" pattern="dd/mm/yyyy" var="dateOfJoiningvar" />
												
												<form:input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy" 
												path="dateOfJoining" name="dateOfJoining" value="${dateOfJoiningvar}" id="dateOfJoining" readonly="false"/>	
											</c:if>
											
											<c:if test="${userRoleId ==2 }">
												<fmt:formatDate value="${employeeProfile.dateOfJoining}" pattern="dd/mm/yyyy" var="dateOfJoiningvar" />
												
												<form:input type="text" class="form-control" data-mask="99/99/9999" placeholder="dd/mm/yyyy" 
												path="dateOfJoining" name="dateOfJoining" value="${dateOfJoiningvar}" id="dateOfJoining" readonly="true"/>													
											</c:if>
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
											<label class="hrzn-fm">Phone Number</label>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<form:input type="text" path="phoeNumber" name="phoeNumber" value="${employeeProfile.phoeNumber}" id="phoeNumber" class="form-control input-sm"
													placeholder="Enter Designation Name" />
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Email ID</label>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<form:input type="text" path="emailId" name="emailId" value="${employeeProfile.emailId}" id="emailId" class="form-control input-sm"
													placeholder="Enter Email ID"/>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Skype ID</label>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<form:input type="text" path="skypeId"
													name="skypeId" value="${employeeProfile.skypeId}"
													id="skypeId" class="form-control input-sm" 
													placeholder="Enter Skype ID" />
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="form-example-int form-horizental mg-t-15">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Address</label>
										</div>
										<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<form:input type="text" path="address"
													name="address" value="${employeeProfile.address}"
													id="address" class="form-control input-sm"
													placeholder="Enter Address" />
											</div>
										</div>
									</div>
								</div>
							</div>

						<!-- Image Cropping -->
							<div class="image-cropper-wp">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="image-crop">
											<img src="${pageContext.request.contextPath}/resources/notika-master/img/cropper/1.jpg" id="profilePicId" alt="">
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="preview-img-pro-ad">
											<div class="maincrop-img">
												<div class="image-crp-int">
													<h4>Preview image</h4>
													<div class="img-preview img-preview-custom"></div>
												</div>
												<div class="image-crp-img">
													<h4>Comon method</h4>
													<p>You can upload new image to crop.</p>
													<div class="btn-group images-cropper-pro">
														<label title="Upload image file" for="inputImage" class="btn btn-primary img-cropper-cp"> 
															<form:input type="file" accept="image/*" path = "imageFile" name="imageFile" id="inputImage" class="hide" value="${employeeProfile.imageFile}"/> Upload new image
														 </label> 
														 <!--<label title="Donload image" id="download" class="btn btn-primary">Download</label> -->
														 
														 <form:hidden path="profilePicPath" name="profilePicPath" value="${employeeProfile.profilePicPath}" id="profilePicPath"/>
														 
													</div>
												</div>
											</div>
											<div class="cp-img-anal">
												<h4>Other method</h4>
												<p>
													You may set cropper options with
													<code>$(image}).cropper(options)</code>
												</p>
												<div class="btn-group images-action-pro">
													<button class="btn btn-white" id="zoomIn" type="button">Zoom In</button>
													<button class="btn btn-white" id="zoomOut" type="button">Zoom Out</button>
													<button class="btn btn-white" id="rotateLeft" type="button">Rotate Left</button>
													<button class="btn btn-white" id="rotateRight" type="button">Rotate Right</button>
													<button class="btn btn-warning img-cropper-cp-t" id="setDrag" type="button">New crop</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<form:hidden path="profilePicPath" value="${employeeProfile.profilePicPath}" id="profilePicPath"/> 

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
    
    <!-- Image Cropper -->
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/cropper/cropper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/cropper/cropper-actice.js"></script>
    
    <!-- Tables -->
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/data-table/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/notika-master/js/data-table/data-table-act.js"></script>
</body>
</html>