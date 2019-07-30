<!DOCTYPE html>
<html lang="en">
<head>

<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style>
@import url(https://fonts.googleapis.com/css?family=Righteous);

body {
	background: #B0E0E6;
	text-align: center;
}
</style>

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
				<a class="navbar-brand" href="#">NGO</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="ngodashboard">Dashboard</a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav hidden-xs">
				<h2>NGO ${user.getName()}</h2>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="ngodashboard">Dashboard</a></li>
					<li><a href=""></a></li>
					<li><a href="ngochart">Chart</a></li>
					<li><a href="eventdetails">Event</a></li>
					<li><a href=""></a></li>
				</ul>
				<br>
			</div>
			<br>

			<div class="col-sm-9">
				<div class="well">
					<h4>Social Help-Care Portal</h4>
				</div>

			</div>


			<div>
				<h2>A Pie Chart</h2>
				<canvas id="pie" width="800" height="500"></canvas>
			</div>

		</div>
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="/js/ngochart.js"></script>
</body>
</html>
