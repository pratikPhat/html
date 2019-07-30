<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link href="/css/header.css" rel="stylesheet">
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
</head>
<body>
	<ul>
		<li><a class="active fa fa-home" href="home">Home</a></li>
		<li><a href="contact" class="fa fa-phone">Contact Us</a></li>
		<li><a href="aboutus" class="fa fa-info-circle">About</a></li>
		<li><a href="help" class="fa fa-question-circle">Help</a></li>
		<li><a href="signin" class="right">sign-in</a></li>
		<li><a href="signup" class="signup fa fa-sign-out"
			style="font-size: 15px; color: #00b33c">sign-up</a></li>
	</ul>
	<div class="container-fluid">
		<div class="login-form">
			<form action="login" method="post">
				<h2 class="text-center">Log in</h2>
				<div class="form-group">
					<input type="text" name="name" class="form-control"
						placeholder="Username" required="required">
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control"
						placeholder="Password" required="required">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">Log
						in</button>
				</div>
				<div class="clearfix">
					<label class="pull-left checkbox-inline"><input
						type="checkbox"> Remember me</label> <a href="#"
						class="pull-right">Forgot Password?</a>
				</div>
			</form>
			<p class="text-center">
				<a href="signup">Create an Account</a>
			</p>
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




