<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#Checkindatepicker" ).datepicker();
  } );
  $( function() {
	    $( "#Checkoutdatepicker" ).datepicker();
	  } );
	 
  </script>
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Book My Stay</a>
    </div>
    <ul class="nav navbar-nav">
       <li class="active"><a href="Home">Home</a></li>
  	   <li><a href="Amenities">Amenities</a></li>
  	   <li><a href="ReservationView.html">Reservation</a></li>
  	   <li><a href="Contact">ContactUs</a></li>
  	   <li><a href="HomeView.html"><button type="button" class="btn btn-success">Logout</button></a></li>  
  	   <li><a href="EditProfile.html">Hello , ${user.userFname}</a></li>	   
    </ul>
  </div>
</nav>

<table>
<form action="search.html" method="post">
<tr>
<td>Check-In:</td>
<td><p><input type="text" id="Checkindatepicker"></p></td>
<td>Check-Out:</td>
<td><p><input type="text" id="Checkoutdatepicker"></p></td>
<td>Adults</td>
<td><input type="text" name="txtadult">
<td>Children</td>
<td><input type="text" name="txtadult">
<td><input type="submit" value="Search">
</tr>
</form>
</table>
</body>
</html>