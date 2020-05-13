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
    <title>EMPLOYEE LIST</title>
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
    <link rel="stylesheet" href="resources/notika-master/css/normalize.css">
    <link rel="stylesheet" href="resources/notika-master/css/wave/waves.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/wave/button.css">
    <link rel="stylesheet" href="resources/notika-master/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/notika-custom-icon.css">
    <link rel="stylesheet" href="resources/notika-master/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="resources/notika-master/css/main.css">
    <link rel="stylesheet" href="resources/notika-master/style.css">
    <link rel="stylesheet" href="resources/notika-master/css/responsive.css">
    <script src="resources/notika-master/js/vendor/modernizr-2.8.3.min.js"></script>
    
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
                            <h2>EMPLOYEE LIST</h2>
                        </div>
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Sno</th>
                                        <th>Employee Code</th>
                                        <th>Employee Name</th>
                                        <th>Email ID</th>
                                        <th>Department</th>
                                        <th>Designation</th>
                                        <th>Date of birth</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${employeeProfileList}" var="empList">
										<tr>
											<td><a href="editEmployeeProfile?empId=<c:out value='${empList.empId}'/>"><c:out value="${empList.empId}" /></a></td>
											<td><c:out value="${empList.employCode}" /></td>
											<td><c:out value="${empList.employeeName}" /></td>
											<td><c:out value="${empList.emailId}" /></td>
											<td><c:out value="${empList.departmentName}" /></td>
											<td><c:out value="${empList.designationName}" /></td>
											<td><fmt:formatDate value="${empList.dateOfBirth}" pattern="dd/mm/yyyy" /></td>
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
    <!-- Data Table area End-->
    <!-- Start Footer area-->
    <!-- Start Footer area-->
	<jsp:include page="/WEB-INF/views/templates/footerTemplate.jsp"></jsp:include>
	<!-- End Footer area-->
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
    <script src="resources/notika-master/js/chat/jquery.chat.js"></script>
    <script src="resources/notika-master/js/todo/jquery.todo.js"></script>
    <script src="resources/notika-master/js/wave/waves.min.js"></script>
    <script src="resources/notika-master/js/wave/wave-active.js"></script>
    <script src="resources/notika-master/js/plugins.js"></script>
    <script src="resources/notika-master/js/data-table/jquery.dataTables.min.js"></script>
    <script src="resources/notika-master/js/data-table/data-table-act.js"></script>
    <script src="resources/notika-master/js/main.js"></script>
    <script src="resources/notika-master/js/tawk-chat.js"></script>
</body>

</html>