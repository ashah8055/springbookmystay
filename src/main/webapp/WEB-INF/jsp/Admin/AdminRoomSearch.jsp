<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Employee Management</title>
    <style>
        .error
        {
            color: #ff0000;
            font-weight: bold;
        }
        #listOfEmployees tr:first-child{
            font-weight: bold;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>View Room</title>
		<link href="../css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="../css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
		  
</head>

<body>
	<!---start-Wrap--->
			<!---start-header--->
			<div class="header">
				<div class="wrap">
					<div class="header-top">
						<div class="logo">
							<!---<a href="index.html"><img src="images/logo2.png" height="40"  title="logo" /></a>--->
							<div style="font-size: 3em; padding: 20px;">Book My Stay</div>
						</div>
						<div class="contact-info">
							<a href="<c:url value='/logout' />">Logout</a>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<div class="header-top-nav">
					<div class="wrap">
						<ul>
							<li class="active"><a href="AdminHomeView.html">Home</a></li>
							<li><a href="addRoom.html">RoomAdd</a></li>
							<li><a href="viewRoom.html">RoomEdit</a></li>
							<li><a href="allReservation.html">Reservation List</a></li>
							<li><a href="viewUsers.html">Users</a></li>
							<li><a href="AdminRoomSearch.html">Walkin</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>

<br/>

<form action="AdminRoomSearch.html" method="post" class="form-horizontal">
	<div class="form-group">
						<label class="control-label col-sm-2">Check-in</label>
						<div class="col-sm-3">
							<input type="date" name="checkin" class="form-control" required/>
						</div>
						<label class="control-label col-sm-2">Check-out</label>
						<div class="col-sm-3">
							<input type="date" name="checkout" class="form-control" required/>
						</div>
	</div>
	
	<div class="form-group">
			<div id="slow">
				<div id="toCopy">
						<div>
						<label class="control-label col-sm-2">Adults</label>
						<div class="col-sm-1">
							<input type="number" name="adultNo" min="0" max="4" class="form-control" value=1 />
						</div>
						<label class="control-label col-sm-2">Children</label>
						<div class="col-sm-1">
							<input  type="number" name="childNo" min="0" max="3" class="form-control" value=0 />
						</div>
					</div>
					
					</div>
				</div>	
						<label class="control-label col-sm-2">Rooms</label>
						<div class="col-sm-1">
							<select name="roomNo" id="mySelect"  class="form-control" >
							  <option value=1>1</option>
							  <option value=2>2</option>
							  <option value=3>3</option>
							  <option value=4>4</option>
							 </select>
							 
							 <div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" name="search" class="btn btn-primary" />
						</div>
</form> 
</body>
</html>