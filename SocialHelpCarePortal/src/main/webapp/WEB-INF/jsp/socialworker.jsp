<!DOCTYPE html>
<html lang="en">
<head>

<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="/css/event.css">
</head>
<body>

	<nav class="navbar navbar-inverse visible-xs">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Dashboard</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav hidden-xs">
				<h2>${user.getFullName()}</h2>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#section1">Dashboard</a></li>
					<li><a href="#section2"></a></li>
					<li><a href="volunteerchart">Chart</a></li>

					<li><a href="#section3"></a></li>
				</ul>
				<br>
			</div>
			<br>

			<div class="col-sm-9">
				<div class="well">
					<h4>Social Help-Care Portal (FOR SOCIAL WORKER)</h4>
					<p></p>
				</div>
				<div class="row">

					<div class="col-sm-3">
						<div class="well">
							<a href="volunteerregister" target="iframe_a">
								<h4>Registration Form</h4>
								<p></p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="well">
							<a href="#" target="iframe_a">
								<h4>Ngo Events</h4>
								<p></p>
						</div>
					</div>


				</div>

				<iframe src="" name="iframe_a" height="300" width="850"
					style="border: none;"> </iframe>
				<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
				<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
