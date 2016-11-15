<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room Search Result</title>
</head>
<body>
<ul>
							<li class="active"><a href="AdminHomeView.html">Home</a></li>
							<li><a href="addRoom.html">RoomAdd</a></li>
							<li><a href="viewRoom.html">RoomEdit</a></li>
							<li><a href="allReservation.html">Reservation</a></li>
							<li><a href="viewUsers.html">Users</a></li>
							<li><a href="AdminRoomSearch.html">User Reservation</a></li>
							<div class="clear"> </div>
						</ul>
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
<form action="addReservation1.html" >

<c:forEach items="${rooms}" var="room">
<tr>
  
  
  <td>${room.roomNo}</td>
  
  <td>${room.type}</td>
  <td>${room.rate}</td>
  <td>${room.capacity}</td>
  
   <td>
  <input type="hidden" name="checkin" value="${checkin}"/>
  <input type="hidden" name="checkout" value="${checkout}"/>
  <input type="hidden" name="roomid" value="${room.id}"/>
  <input type="submit" name="submit" value="Reserve" />
   </td>
 
 
</tr>
</c:forEach>
 </form>
</table>
</body>
</html>