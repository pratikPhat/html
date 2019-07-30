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
					<li><a href="#">Age</a></li>
					<li><a href="#">Gender</a></li>
					<li><a href="#">Geo</a></li>
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
					<li><a href="#section2"></a></li>
					<li><a href="ngochart">Chart</a></li>
					<li><a href="eventdetails" target="iframe_a">Event</a></li>
					<li><a href="#section3"></a></li>
				</ul>
				<br>
			</div>
			<br>

			<div class="col-sm-9">
				<div class="well">
					<h4>Social Help-Care Portal</h4>
					<p></p>
				</div>
				<div class="row">
					<form action="event" method="post">
						<div class="login-form">
							<h2 align="center">EventForm</h2>
							<table align="center" cellpadding="10">
								<tr>
									<div class="col-sm-4">
										<td class="textb">Event Name</td>
									</div>
									<div class="col-sm-4">
										<td><input type="text" name="eventName" maxlength="30" /></td>
									</div>
								</tr>
								<tr>
									<div class="col-sm-4">
										<td class="textb">Date</td>
									</div>
									<div class="col-sm-4">
										<td><input type="date" name="date"></td>
									</div>
								</tr>
								<tr>
									<div class="col-sm-4">
										<td class="textb">Duration</td>
									</div>
									<div class="col-sm-4">
										<td><input type="number" name="duration"></td>
									</div>
								</tr>
								<tr>
									<div class="col-sm-4">
										<td class="textb">Venue</td>
									</div>
									<div class="col-sm-4">
										<td><input type="text" name="venue"></td>
									</div>
								</tr>
								<tr>
									<div class="col-sm-4">
										<td class="textb">Event Type</td>
										<td><select name="eventtype">
												<option>select</option>
												<option>Education</option>
												<option>Food</option>
												<option>Old-Age</option>


										</select></td>
									</div>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<button type="submit" name="submit" class="btn btn-success">Generate</button>
									</td>
								</tr>

							</table>
						</div>
					</form>
				</div>


				<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
				<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
