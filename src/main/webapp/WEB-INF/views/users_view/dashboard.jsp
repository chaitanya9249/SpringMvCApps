<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dashboard One</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="resources/notika-master/img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/bootstrap.min.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/notika-master/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/owl.theme.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/owl.transitions.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/meanmenu/meanmenu.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/normalize.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/notika-custom-icon.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/wave/waves.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/main.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/notika-master/css/responsive.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/notika-master/js/vendor/modernizr-2.8.3.min.js"></script>




<%-- <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/sample.js"></script> --%>

<style type="text/css">

.footer-copyright-area  {
	margin-top: 40px;
	position: absolute;
	right: 0;
	bottom: 0;
	left: 0;
	text-align: center;
}

</style>
</head>

<body>
	<!--Header Top Area -->
	<jsp:include page="/WEB-INF/views/templates/headerTemplate.jsp"></jsp:include>
	<!-- End Header Top Area -->


	<!-- Mobile Menu start -->
	<jsp:include page="/WEB-INF/views/templates/menuTemplate.jsp"></jsp:include>
	<%-- <c:if test="${userRoleId == 1 }">
		<jsp:include page="/WEB-INF/views/templates/menuTemplate.jsp"></jsp:include>
	</c:if>

	<c:if test="${userRoleId == 2 }">
		<jsp:include page="/WEB-INF/views/templates/usermenutemplate.jsp"></jsp:include>
	</c:if> --%>

	<!-- Mobile Menu end -->


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
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/jvectormap/jvectormap-active.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/sparkline/jquery.sparkline.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/sparkline/sparkline-active.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/flot/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/flot/jquery.flot.resize.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/flot/curvedLines.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/flot/flot-active.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/knob/jquery.knob.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/knob/jquery.appear.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/knob/knob-active.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/wave/waves.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/wave/wave-active.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/todo/jquery.todo.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/chat/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/chat/jquery.chat.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/notika-master/js/tawk-chat.js"></script>
</body>
</html>