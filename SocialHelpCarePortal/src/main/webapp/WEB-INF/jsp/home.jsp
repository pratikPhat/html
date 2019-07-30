<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER PAGE</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link href="/css/header.css" rel="stylesheet">
</head>
<style>
body {
	min-height: 100vh;
	background-color: #B0E0E6;
}

.txtb {
	border-bottom: 2px solid #adadad;
	position: relative;
	margin: 30px 0;
}

.login-form {
	width: 340px;
	margin: 50px auto;
}

.login-form form {
	margin-bottom: 15px;
	background: #f7f7f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.login-form h2 {
	margin: 0 0 15px;
}

.form-control, .btn {
	min-height: 38px;
	border-radius: 2px;
}

.btn {
	font-size: 15px;
	font-weight: bold;
}
</style>
<body>

	<ul>
		<li><a class="active fa fa-home" href="home">Home</a></li>
		<li><a href="contact" class="fa fa-phone">Contact Us</a></li>
		<li><a href="aboutus" class="fa fa-info-circle">About</a></li>
		<li><a href="help" class="fa fa-question-circle">Help</a></li>
		<li><a href="signin" class="right fa fa-sign-in"
			style="font-size: 15px; color: #00b33c">sign-in</a></li>
		<li><a href="signup" class="signup fa fa-sign-out"
			style="font-size: 15px; color: red">sign-up</a></li>
	</ul>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="jumbotron text-center">
					<h1>WELCOME TO SOCIAL HELP_CARE PORTAL</h1>
					<h2>Register to seek help or to give help</h2>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_REGISTER'}">
			<div class="container-fluid">
				<div class="login-form">
					<form action="form" id="form" method="post">
						<h2 class="text-center">REGISTER</h2>
						<div class="form-group">
							<input type="text" name="fullName" id="fullName"
								class="form-control" placeholder="Enter Full Name">
						</div>
						<div class="form-group">
							<input type="text" name="name" id="name" class="form-control"
								placeholder="Username">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control" placeholder="Password">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="cnf_pwd"
								placeholder="Confirm Password">
						</div>
						<div class="form-group">
							<label class="fa fa-user-plus">Select Role</label> <select
								class="form-control" id="select" name="type">
								<option value="select">select</option>
								<option value="NGO">NGO</option>
								<option value="NEEDY">NEEDY</option>
								<option value="Volunteer">Volunteer</option>
								<option id="yesCheck" value="Admin">Admin</option>
							</select>
						</div>
						<div class="form-group" id="ifYes" style="display: none;">
							<input type="text" class="form-control" name="registrationId" id="reg_no"
								placeholder="Registration Number">
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</div>
					</form>
				</div>
		</c:when>
	</c:choose>

	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center ">
					<div class="copyright-text">
						<p>CopyRight @CDAC 2019 Digital All Rights Reserved</p>
						<p>Posted By:Cdac Project group</p>
					</div>
				</div>
				<!-- End Col -->

			</div>
		</div>
	</div>



	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="/js/signupvalidate.js"></script>

</body>
</html>