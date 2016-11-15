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
							<li><a href="allReservation.html">Reservation</a></li>
							<li><a href="viewUsers.html">Users</a></li>
							<li><a href="AdminRoomSearch.html">User Reservation</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>

<br/>




<table id="listOfRoom" class="table table-striped table-bordered table-list">
    <tr style="font-weight:bold;">
        <th>ID</th>
        <th>Type</th>
        <th>RoomNumber</th>
   <!--      <td>Available</td>
    -->     <th>Microwave</th>
        <th>FlatTv</th>
        <th>miniRefrigerator</th>
        <th>balcony</th>
        <th>smoke</th>
        <th>rate</th>
        <th>Room Availability</th>
        <th>Edit</th>





    </tr>

    <c:forEach items="${SpringWeb}" var="room">
        <tr>
            <td>${room.id}

            </td>
            <td>${room.type}</td>
            <td>${room.roomNo}</td>
       <%--      <td>${room.IsAvailable}</td>
        --%>     <td>${room.facility.microwave}</td>
            <td>${room.facility.flatTV}</td>
            <td>${room.facility.miniFridge}</td>

            <td>${room.facility.balcony}</td>
            <td>${room.smoke}</td>
            <td>${room.defaultRate}</td>
            <td>${room.flag}</td>
            
            <td><a href="update.html?id=${room.id}">Edit</a></td>

        </tr>
    </c:forEach>
</table>

</body>
</html>