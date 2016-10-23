<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>AdminHome</title>
</head>
<body>
	<div class="row" >
		<div class="col-sm-3"	>
			<table border="2" class="table table-striped table-bordered table-list"  >
				<tr>
				<th rowspan="2"><u>Admin Panel</u>

				</tr>
				<tr>
				<th><br><br>
				</tr>

				<tr>
					<th><a href="AdminHomeView.html">Home</a>
				</tr>
				<tr>
					<th><a href="AdminOverview.html" >Overview</a>
				</tr>
				<tr>
					<th><a href="addRoom.html" >Room Add</a>
				</tr>
				<tr>
					<th><a href="AdminRateCategory.html" >Rate Category</a>
				</tr>

				<tr>
					<th><a href="AdminManageReservation.html">Manage<br>Reservation</a>
				</tr>
				<tr>
					<th><a href="AdminReports.html">Reports</a>
				</tr>
				<tr>
					<th><a href="adminFeedbackManagement.html">Feedback<br>Management</a>
				</tr>
				<tr>
					<th><a href="adminContentManagement.html">Content<br>Management</a>
				</tr>
			</table>
		</div>
		<div class="col-sm-7">
			<h4>Todays Reservation Done List</h4>
			<table border="2">
			<tr>
			<th>Check-In Date
			<th>Check-Out Date
			<th>Name
			</tr>
			</table>

			<br>
			<br>
			<h4>Todays Customer Arrival List</h4>
			<table border="2">
			<tr>
			<th>Name
			<th>Room Type

			</tr>
			</table>

		</div>
	</div>

	</body>
</html>