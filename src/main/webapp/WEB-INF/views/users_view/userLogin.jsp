<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/notika-master/img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/bootstrap.min.css">
    <!-- font awesome CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/owl.carousel.css">
    <link rel="stylesheet" href="resources/notika-master/css/owl.theme.css">
    <link rel="stylesheet" href="resources/notika-master/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/normalize.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/wave/waves.min.css">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/notika-custom-icon.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="resources/notika-master/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="resources/notika-master/js/vendor/modernizr-2.8.3.min.js"></script>
    
    	<!-- Load jQuery JS -->
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<!-- Load jQuery UI Main JS -->
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    
    <script>
		$(function() 
		{
			$('#alertMessageId').delay(3000).fadeOut();
		});
	</script>
</head>
<body>
	<div class="login-content">
        <!-- Login -->
        <div class="nk-block toggled" id="l-login">
         <div class="nk-form">

				<c:if test="${fn:length(loginFailMessage) gt 0}">
					<div class="alert-inner mg-t-30" id="alertMessageId">
						<div class="alert-list">
							<div class="alert alert-danger alert-dismissible alert-mg-b-0" role="alert">${loginFailMessage}</div>
						</div>
					</div>
				</c:if>

				<c:if test="${fn:length(successMessage) gt 0}">
					<div class="alert-inner mg-t-30" id="alertMessageId">
						<div class="alert-list">
							<div class="alert alert-success alert-dismissible" role="alert">${successMessage}</div>
						</div>
					</div>
				</c:if>
		   <form:form action="loginAction" method="post" modelAttribute="loginUser">

			<form:input type="hidden" path="userId" name="userId" id="userId" value="${loginUser.userId}"/>
			
			<form:input type="hidden" path="roleId" name="roleId" id="roleId" value="${loginUser.roleId}"/>
			
			<div class="input-group">
				<span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
				<div class="nk-int-st">
					<form:input type="text" path="username" name="username" value="${loginUser.username}" id="username" class="form-control" placeholder="Username" />
				</div>
			</div>

              <div class="input-group mg-t-15">
                    <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
                    <div class="nk-int-st">
                        <form:input type="password" path="password" name="password" value="${loginUser.password}" id="password" class="form-control" placeholder="Password"/>
                    </div>
                </div>
                <div class="fm-checkbox">
                    <label><input type="checkbox" class="i-checks"> <i></i> Keep me signed in</label>
                </div>
                <a href="signupView" class="btn btn-login btn-success btn-float"><i class="notika-icon notika-right-arrow right-arrow-ant"></i></a>
			<form:button type = "submit" id="loginSubmitId" value = "Save">Submit</form:button> 
			<form:button type = "reset" id="loginResetId" value = "Cancel">Cancel</form:button>
		</form:form>
		</div>
	</div>
	</div>
	    <!-- jquery
		============================================ -->
    <script src="resources/notika-master/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="resources/notika-master/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="resources/notika-master/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="resources/notika-master/js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="resources/notika-master/js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="resources/notika-master/js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="resources/notika-master/js/counterup/jquery.counterup.min.js"></script>
    <script src="resources/notika-master/js/counterup/waypoints.min.js"></script>
    <script src="resources/notika-master/js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="resources/notika-master/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="resources/notika-master/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="resources/notika-master/js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
		============================================ -->
    <script src="resources/notika-master/js/flot/jquery.flot.js"></script>
    <script src="resources/notika-master/js/flot/jquery.flot.resize.js"></script>
    <script src="resources/notika-master/js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="resources/notika-master/js/knob/jquery.knob.js"></script>
    <script src="resources/notika-master/js/knob/jquery.appear.js"></script>
    <script src="resources/notika-master/js/knob/knob-active.js"></script>
    <!--  Chat JS
		============================================ -->
    <script src="resources/notika-master/js/chat/jquery.chat.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="resources/notika-master/js/wave/waves.min.js"></script>
    <script src="resources/notika-master/js/wave/wave-active.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="resources/notika-master/js/icheck/icheck.min.js"></script>
    <script src="resources/notika-master/js/icheck/icheck-active.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="resources/notika-master/js/todo/jquery.todo.js"></script>
    <!-- Login JS
		============================================ -->
    <script src="resources/notika-master/js/login/login-action.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="resources/notika-master/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="resources/notika-master/js/main.js"></script>
</body>
</html>