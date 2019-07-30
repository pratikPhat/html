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
	<c:choose>
		<c:when test="${mode=='EventList'}">
			<div class="container">
				<div class="jumbotron">
					<h2
						style="text-align: center; text-shadow: 2px 3px #4EB8ED; padding: 8px;">Event
						List</h2>
					<c:forEach items="${events}" var="events">
						<div class="row">
							<div class="col-xs-6">
								<h4 style="text-align: left;">
									<c:out value="${events.getEventName()}" />
									</h3>
							</div>
							<div class="col-xs-3">
								<h4>
									<a href="delete-task/${events.getEventId()}"
										<span class="glyphicon glyphicon-trash">Delete</span></a>
								</h4>
							</div>
							<div class="col-xs-3">
								<h4>
									<a href="edit/${events.getEventId()}"
										<span class="glyphicon glyphicon-edit">Edit</span></a>
								</h4>
							</div>
						</div>
					</c:forEach>
		</c:when>


		<c:when test="${mode=='Edit'}">
			<div class="row">
				<div class="container-fluid">
					<div class="login-form">
						<form action="/updateevent/${event.getEventId()}" method="post">
							<h2 style="text-shadow: 2px 2px #ff0000;">Update Event</h2>
							<div class="form-group">
								<input type="text" value="${event.getEventName()}"
									name="eventName" maxlength="30" />
							</div>
							<div class="form-group">
								<input type="date" name="date">
							</div>
							<div class="form-group">
								<input type="number" value="${event.getDuration()}"
									name="duration">
							</div>
							<div class="form-group">
								<input type="text" value="${event.getVenue()}" name="venue">
							</div>
							<div class="form-group">
								<label class="fa fa-user-plus">Select Type</label> <select
									name="eventtype">
									<option>select</option>
									<option>Education</option>
									<option>Food</option>
									<option>Old-Age</option>
								</select>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='Volunteer'}">
			<div class="container">
				<div class="jumbotron">
					<h2
						style="text-align: center; text-shadow: 2px 3px #4EB8ED; padding: 8px;">Volunteer
						List</h2>
					<table>
						<th>Volunteer Names</th>
						<c:forEach items="${userList}" var="userList">

							<div class="row">
								<div class="col-xs-12">
									<tr>
										<td>
											<h4 class="fa fa-handshake-o" style="text-align: center;">
												<c:out value="${userList.getName()}" />
											</h4>
										</td>
									</tr>
								</div>
							</div>
						</c:forEach>
					</table>
		</c:when>



		<c:when test="${mode=='Needy'}">
			<div class="container">
				<div class="jumbotron">
					<h2
						style="text-align: center; text-shadow: 2px 3px #4EB8ED; padding: 8px;">Needy
						List</h2>
					<table>
						<th>Needy Names</th>
						<c:forEach items="${needyList}" var="needyList">

							<div class="row">
								<div class="col-xs-3">
									<tr>
										<td>
											<h4 class="fa fa-users" style="text-align: center;">
												<c:out value="${needyList.getName()}" />
											</h4>
										</td>
										<td>
											<h4>
												<a href="edit/${needyList.getUserId()}"
													<span class="glyphicon glyphicon-edit">Verify</span></a>
											</h4>
										</td>
										<td>
											<div class="col-xs-3">
												<h4>
													<a href="delete-task/${needyList.getUserId()}"
														<span class="glyphicon glyphicon-trash">Delete</span></a>
												</h4>
											</div>
										</td>
									</tr>
								</div>

							</div>
						</c:forEach>
					</table>
		</c:when>

		<c:when test="${mode=='Ngo'}">
			<div class="container">
				<div class="jumbotron">
					<h2
						style="text-align: center; text-shadow: 2px 3px #4EB8ED; padding: 8px;">Ngo
						List</h2>
					<c:forEach items="${ngoList}" var="ngoList">
						<div class="row">
							<div class="col-xs-6">
								<h4 style="text-align: left;">
									<c:out value="${ngoList.getName()}" />
									</h3>
							</div>
							<div class="col-xs-3">
								<h4>
									<a href="delete-task/${ngoList.getUserId()}"
										<span class="glyphicon glyphicon-trash">Delete</span></a>
								</h4>
							</div>
						</div>
					</c:forEach>
		</c:when>

		<c:when test="${mode=='NeedyNgo'}">
			<div class="container">
				<div class="jumbotron">
					<h2
						style="text-align: center; text-shadow: 2px 3px #4EB8ED; padding: 8px;">Ngo
						List</h2>
					<c:forEach items="${ngoList}" var="ngoList">
						<div class="row">
							<div class="col-xs-6">
								<h4 style="text-align: left;">
									<c:out value="${ngoList.getName()}" />
									</h3>
							</div>
							<div class="col-xs-3">
								<h4>
									<a href="ngodetails/${ngoList.getRegistrationId()}"
										<span class="btn btn-primary">Ngo Details</span></a>
								</h4>
							</div>
						</div>
					</c:forEach>
		</c:when>

		<c:when test="${mode=='NgoDetail'}">
			<div class="container">
				<div class="jumbotron">
					<h2
						style="text-align: center; text-shadow: 2px 3px #4EB8ED; padding: 8px;">Ngo
						Detail</h2>
					<c:forEach items="${ngoDetail}" var="ngoDetail">
						<div class="container">
							<div class="row">
								<div class="col-xs-12">
									<h4 style="text-align: center;">
										<c:out value="${ngoDetail.getName()}" />
									</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-2">
										<c:out value="${ngoDetail.getRegisteredIdNumber()}" />
								</div>
								<div class="col-xs-2">
										<span><c:out value="${ngoDetail.getAddress()}" /></span>
								</div>
								<div class="col-xs-2">
									
										<span><c:out value="${ngoDetail.getAddress()}" /></span>
									
								</div>
								<div class="col-xs-2">
								
										<c:out value="${ngoDetail.getAddress()}" />
								
								</div>
							</div>
						</div>
					</c:forEach>
		</c:when>
	</c:choose>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>