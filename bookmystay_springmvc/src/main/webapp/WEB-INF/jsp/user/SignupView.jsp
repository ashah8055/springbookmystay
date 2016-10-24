<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>


<!-- 
<div class="container-fluid">

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Book My Stay</a>
    </div>
    <ul class="nav navbar-nav">
       <li class="active"><a href="Home">Home</a></li>
  	   <li><a href="Amenities">Amenities</a></li>
  	   <li><a href="Reservation">Reservation</a></li>
  	   <li><a href="Contact">ContactUs</a></li>
  	   <li><a href="SignUp"><button type="button" class="btn btn-primary">SignIn/ SignUp</button></a></li>
	   <li><a href="Login"><button type="button" class="btn btn-success">Login</button></a></li>  	   
    </ul>
  </div>
</nav>
 -->



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
<form:form role="form" modelAttribute="user">
		<table cellspacing="10">
			<tr>
				<td colspan="3"><h3>Personal Information</h3>
			</tr>
			<tr>
				<td>FirstName</td>
				<td><input type="text" name="userFname" class="form-control"  placeholder="First Name" required="required"/> </td>
				<td>LastName</td>
				<td><input type="text" name="userLname" class="form-control"  placeholder="Last Name" required="required"/> </td>
			</tr>
			<tr>
				<td>EmailId
				<td colspan="3"><input type="text" name="userEmail" class="form-control"  placeholder="Email Id" required="required"/> 
			</tr>
			<tr>
				<td>Password
				<td colspan="3"><input type="text" name="userPassword" class="form-control"  placeholder="Password" required="required"/> 
			</tr>
			<tr>
				<td>Confirm Password
				<td colspan="3"><input type="text" name="userConfirmPassword" class="form-control"> 
			</tr>
			<tr>
				<td>Security Question
				<td colspan="3"><select name="securityQuestion" id="dept" class="form-control">
						<option value="1">Which is your favorite car model?</option>
						<option value="2">Which is your nick name?</option>
				</select></td>
				
			</tr>
			<tr>
                    <td> Answer</td><td>  <input type="text" name="ans" class="form-control"> </td>
			</tr>
			<tr>
				<td colspan="4"><h3>Address Information</h3>
			</tr>
			<tr>
				<td>Address
				<td><input type="text" class="form-control" name="addr1"  placeholder="Address 1" required="required"/> 
				
				<td>Apt
				<td><td><input type="text" class="form-control" name="addr2" placeholder="Address no" required="required"/> 
				
			</tr>
			<tr>
				<td>City 
				<td><input type="text" name="city" class="form-control"  placeholder="city" required="required"/>
				<td>State <select name="State" id="securityAnswer" class="form-control" >
						<option value="CAL">California</option>
						<option value="NY">NewYork</option>
				</select>
			</tr>
			<tr>
				<td>ZipCode
				<td><input type="text" name="zip" class="form-control"  placeholder="zipcode" required="required"/>
				<td>Country <select name="country" id="country" class="form-control">
						<option value="USA">United Staes America</option>
						<option value="IND">NewYork</option>
				</select>
			</tr>
			<tr>
				<td colspan="2"><h3>Credit Card Information</h3>
			</tr>
			<tr>
				<td>Credit Card Company <select name="card_type" id="card_type" class="form-control">
						<option value="Visa">Visa</option>
						<option value="MasterCard">MasterCard</option>
						<option value="Discover">Discover</option>
				</select>
				</td>
				<td><input type="text" name="no" class="form-control"  placeholder="card number"/>
			</tr>
			<tr>
				<td><input type="text"  class="form-control"  placeholder="card name" required="required"/>
				<td>Exp. Date <select name="card_expdate" id="cardtype" class="form-control">
						<option value="JAN1">JAN-1</option>
						<option value="FEB2">FEB-2</option>
						<option value="MAR3">MAR-3</option>
						<option value="APR4">APR-4</option>
						<option value="MAY5">MAY-5</option>
						<option value="JUN6">JUN-6</option>
						<option value="JUL7">JUL-7</option>
						<option value="AUG-8">AUG-8</option>
						<option value="SEP-9">SEP-9</option>
						<option value="OCT-10">OCT-10</option>
						<option value="NOV-11">NOV-11</option>
						<option value="DEC-12">DEC-12</option>
				</select>
				</td>
				<td>Year</td>
				<td>
				 <select name="card_expdate" id="cardexpdate" class="form-control">
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
				</select>
				</td>
			</tr>
			<tr>
			 	<td>
				<td colspan="1"><input type="reset" value="clear">
				
			</tr>
		</table>
		<input type="submit" value="submit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
</form:form>
</body>
</html>