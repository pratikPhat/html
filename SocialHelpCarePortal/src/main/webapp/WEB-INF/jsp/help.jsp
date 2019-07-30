<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/help.css">
<link href="/css/header.css" rel="stylesheet">

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
	<div class="sidebar">

		<a class="active" href="faq" target="iframe_a">FAQ's</a> 
		<a href="#" class="a">Instructions</a>

	</div>
	
	<div class="container">
	<div class="jumbotron">
	<div class="row">
	<div class="col-lg-8">
	<ol>
		<li>Register first To Access or get service by Web</li>
		<li>Register with valid email id</li>
		<li>User Must have one validation proof(Adhaar Card ,PAN card)</li>
		<li>Provide valid Mobile Number</li>
		<li>User must check request Status Don't trouble NGO or Admin for
			Pending Requests</li>
		<li>Thank You For connect With Us</li>
	</ol>
	</div>
	</div>
	</div>
	</div>

	<!-- Page content -->
	<div class="content">..</div>
	<h2>How Can We Help You?</h2>

	<form class="example" action="/action_page.php">
		<input style="padding: 8px" type="text" placeholder="Find Query"
			name="search">
		<button style="font-size: 18px" type="submit">
			search<i class="fa fa-search" aria-hidden="true"></i>
		</button>
	</form>

	<iframe src="" name="iframe_a" height="500" width="850"
		style="border: none;"> </iframe>

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
	<script>
	$(document).ready(function() {
		  $('.col-lg-8').hide();
		  $('.jumbotron').hide();
		  $('.a').click(function() {
			  $('.col-lg-8').fadeToggle("slow");
			  $('.jumbotron').css("background-color","#ccccff");
			  $('.jumbotron').fadeToggle("slow");
		  });
	  });
	</script>
</body>
</html>