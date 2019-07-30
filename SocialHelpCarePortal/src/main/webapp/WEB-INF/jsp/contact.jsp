<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/contact.css">
</head>
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
	<div class="container">
		<div class="row">
			<h1>contact us</h1>
		</div>
		<div class="row">
			<h4 style="text-align: center">We'd love to hear from you!</h4>
		</div>
		<form action="feedback" method="post">
			<div class="row input-container">
				<div class="col-xs-12">
					<div class="styled-input wide">
						<input type="text" name="name" required /> <label>Name</label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input">
						<input type="text" name="mail" required /> <label>Email</label>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="styled-input" style="float: right;">
						<input type="text" name="phone" required /> <label>Phone
							Number</label>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="styled-input wide">
						<textarea name="message"></textarea>
						<label>Message</label>
					</div>
				</div>
				<div class="col-xs-12">
					<input type="submit" name="submit" value="Send Message"
						class="btn-lrg submit-btn" required />

				</div>
		</form>
	</div>
	</div>
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
</body>
</html>