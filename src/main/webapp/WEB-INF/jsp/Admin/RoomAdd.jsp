<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Room Add </title>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/responsiveslides.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script>
	// You can also use "$(window).load(function() {"
	$(function() {

		// Slideshow 1
		$("#slider1").responsiveSlides({
			maxwidth : 1600,
			speed : 600
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
	
	<!---End-header--->
	<div class="clear"></div>
	<div class="container">
		<div class="row">
			<div class="col-md">
				<table class="table">
					<tr>
					</tr>
				</table>



				<form:form action="addRoom1.html" method="post"
					class="form-horizontal">

					<div class="form-group">
						<label class="control-label col-sm-2">Room Type</label>
						<div class="col-sm-2">
							<form:input path="type" type="text" class="form-control" placeholder="Enter Room Type" required="required" />
						</div>
						<label class="control-label col-sm-2">Room Number</label>
						<div class="col-sm-2">
							<form:input path="roomNo" value="" class="form-control" placeholder="Enter Room Number" required="required" />
						</div>
						<label class="control-label col-sm-2">Capacity</label>
						<!-- <div class="col-sm-2">
							<form:input path="capacity" value="" class="form-control" placeholder="Enter Capacity" required="required" />
						</div> -->
						
						<div class="col-sm-2">
						    <form:select path="capacity">
						    <%for(int i=1; i<= 10; i+=1){ %>
						        <form:option value="<%=i%>"><%=i%></form:option>
						    <%} %>
						    </form:select>
						</div>
						
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">Availability</label>
						<div class="col-sm-1 checkbox">
							<label><form:checkbox path="flag" value=""  required="required"/></label>
						</div>
						<label class="control-label col-sm-2">Smoke</label>
						<div class="col-sm-1 checkbox">
							<label><form:checkbox path="smoke" /></label>
						</div>
					</div>
					<div style="font-size: 1.5em; padding: 20px;">Facilities
						Provided</div>
					<div class="form-group">
						<label class="control-label col-sm-2">Microwave</label>
						<div class="col-sm-1 checkbox">
							<label><form:checkbox path="facility.microwave"
									value="yes" /></label>
						</div>
						<label class="control-label col-sm-2">FlatTv</label>
						<div class="col-sm-1 checkbox">
							<label><form:checkbox path="facility.flatTV" value="yes" /></label>
						</div>
						<label class="control-label col-sm-2">Mini Refrigerator</label>
						<div class="col-sm-1 checkbox">
							<label><form:checkbox path="facility.miniFridge"
									value="yes" /></label>
						</div>
						<label class="control-label col-sm-2">Balcony</label>
						<div class="col-sm-1 checkbox">
							<label><form:checkbox path="facility.balcony" value="yes" /></label>
						</div>
						
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">Rate</label>
						<div class="col-sm-2">
							<form:input path="defaultRate" value="80" class="form-control"  placeholder="Enter Rate"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary" />
						</div>
					</div>
					
				</form:form>

			</div>
		</div>
	</div>
</body>

</html>
