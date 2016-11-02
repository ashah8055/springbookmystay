<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>

<!DOCTYPE HTML>
<html>
	<head>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<title>Book My Stay</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
	</head>
	<body>
		<!---start-Wrap--->
			<!---start-header--->
			<div class="header">
				<div class="wrap">
					<div class="header-top">
						<div class="logo">
							<!--<a href="index.html"><img src="images/logo2.png" height="40"  title="logo" /></a>-->
							<div style="font-size: 3em; padding: 20px;">Book My Stay</div>
							
						</div>
						<div class="contact-info">
						You Need to Signup to Book a room.
							<a href="Signupview.html">SignUp</a> | 
							<a href="login.html">Login</a>
							
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<div class="header-top-nav">
					<div class="wrap">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li class="active"><a href="firstpage.html">RoomSearch</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="contact.html">Contact</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>
			<!---End-header--->
			<div class="clear"> </div>

<body>


<table class="table table-striped table-bordered table-list">
	<tr>
		<td style="font-weight:bold;">Check-in:</td>
		<td>${checkin}</td>
		<td style="font-weight:bold;">Check-out:</td>
		<td>${checkout}</td>
	</tr>
</table>
<table border=1 class="table table-striped table-bordered table-list">
<tr><th>RoomNo</th><th>Type</th><th>Rate</th><th>capacity</th>

<security:authorize access="authenticated">
  
    <security:authorize access="hasAnyRole('ADMIN','USER')">
<th>Reserve</th>
</security:authorize>
   </security:authorize> 
</tr>
<%-- <security:authorize access="anonymous">
    <a href="<c:url value='/login.html' />">Login</a>
  </security:authorize> 
 --%>  
<form action="addReservation.html" >

<c:forEach items="${rooms}" var="room">
<tr>
  <td>${room.roomNo}</td>
  
   <td>${room.type}</td>
  <td>${room.rate}</td>
 
  
  
  <td>${room.capacity}</td>
 
  
  <security:authorize access="authenticated">
  
    <security:authorize access="hasAnyRole('ADMIN','USER')">
   <td>
  <input type="hidden" name="checkin" value="${checkin}"/>
  <input type="hidden" name="checkout" value="${checkout}"/>
  <input type="hidden" name="roomid" value="${room.id}"/>
  <input type="submit" name="submit" value="Reserve" />
   </td>
   </security:authorize>
   </security:authorize> 
 
 
</tr>
</c:forEach>
 </form>
</table>



  









</body>
</html>