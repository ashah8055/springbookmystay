<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="container">
<table class='table' border="2" align="center">
<tr>
<td><a href="Home">Home</a></td>
<td><a href="Amenities">Amenities</a></td>
<td><a href="Reservation">Reservation</a></td>
<td><a href="SignUp">SignIn/ SignUp</a></td>
<td><a href="Login">Login</a></td>
<td><a href="Contact">ContactUs</a></td>
</tr>
</table>
</div>

<table>
<form action="ReservationSelection">
<tr>
<td>Check-In:</td>
<td><p><input type="text" id="Checkindatepicker"></p></td>
<td>Check-Out:</td>
<td><p><input type="text" id="Checkoutdatepicker"></p></td>
<td>Adults</td>
<td><input type="text" name="txtadult">
<td>Children</td>
<td><input type="text" name="txtadult">
<td><input type="submit" value="Book">
</tr>
</form>
</table>
</body>
</html>