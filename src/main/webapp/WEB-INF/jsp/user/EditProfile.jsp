<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Edit Profile</title>
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
  	   <li align="right"><a href="EditProfile.html">Hello , ${user.userFname}</a></li>	   
    </ul>
  </div>
</nav>
<form:form role="form" modelAttribute="user">
		<table cellspacing="10">
			<tr>
				<td colspan="3"><h3>Personal Information</h3>
			</tr>
			<tr>
				<td>FirstName</td>
				<td><input type="text" value="${user.userFname}" name="userFname" class="form-control"  placeholder="First Name" required="required"/> </td>
				<td>LastName</td>
				<td><input type="text" value="${user.userLname}" name="userLname" class="form-control"  placeholder="Last Name" required="required"/> </td>
			</tr>
			<tr>
				<td>EmailId
				<td colspan="3"><input type="text" value="${user.userEmail}" name="userEmail" class="form-control"  placeholder="Email Id" required="required"/> 
			</tr>
			<tr>
				<td>Password
				<td colspan="3"><input type="password" value="${user.userPassword}" name="userPassword" class="form-control"  placeholder="Password" required="required"/> 
			</tr>
			<tr>
				<td>Confirm Password
				<td colspan="3"><input type="password" value="${user.userPassword}" name="userConfirmPassword" class="form-control"> 
			</tr>
			<tr>
				<td>Security Question
				<td colspan="3"><select name="securityQuestion" id="dept" class="form-control">
						<option value="1" ${user.securityQuestion == '1' ? 'selected' : '' }>Which is your favorite car model?</option>
						<option value="2" ${user.securityQuestion == '2' ? 'selected' : '' }>Which is your nick name?</option>
				</select></td>
				
			</tr>
			<tr>
                    <td> Answer</td><td>  <input type="text" value="${user.securityAnswer}" name="ans" class="form-control"> </td>
			</tr>
			<tr>
				<td colspan="4"><h3>Address Information</h3>
			</tr>
			<tr>
				<td>Address
				<td><input type="text" value="${user.address.addr1}" class="form-control" name="addr1"  placeholder="Address 1" required="required"/> 
				
				<td>Apt
				<td><td><input type="text" value="${user.address.addr2}" class="form-control" name="addr2" placeholder="Address no" required="required"/> 
				
			</tr>
			<tr>
				<td>City 
				<td><input type="text" value="${user.address.city}" name="city" class="form-control"  placeholder="city" required="required"/>
				<td>State <select name="State" id="securityAnswer" class="form-control" >
						<option value="CAL" ${user.address.state == 'CAL' ? 'selected' : '' } >California</option>
						<option value="NY" ${user.address.state == 'NY' ? 'selected' : '' }>NewYork</option>
				</select>
			</tr>
			<tr>
				<td>ZipCode
				<td><input type="text" value="${user.address.zipcode}" name="zip" class="form-control"  placeholder="zipcode" required="required"/>
				<td>Country <select name="country" id="country" class="form-control">
						<option value="USA" ${user.address.country == 'USA' ? 'selected' : '' }>United Staes America</option>
						<option value="IND" ${user.address.country == 'IND' ? 'selected' : '' }>India</option>
				</select>
			</tr>
			<tr>
				<td colspan="2"><h3>Credit Card Information</h3>
			</tr>
			
		</table>
		<input type="submit" value="Edit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
</form:form>
</body>
</html>
<body>

</body>
</html>