<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Sign Up</title>
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
<form action="" method="post" >
		<table cellspacing="10">
			<tr>
				<td colspan="3"><h3>Personal Information</h3>
			</tr>
			<tr>
				<td>FirstName
				<td><input type="text" name="txtname">
				<td>LastName
				<td><input type="text" name="txtlast">
			</tr>
			<tr>
				<td>EmailId
				<td colspan="3"><input type="text" name="txtemail">
			</tr>
			<tr>
				<td>Username
				<td colspan="3"><input type="text" name="txtuser">
			</tr>
			<tr>
				<td>Password
				<td colspan="3"><input type="password" name="txtpassword">
			</tr>
			<tr>
				<td>Confirm Password
				<td colspan="3"><input type="password"
					name="txtconfirmpassword">
			</tr>
			<tr>
				<td>Security Question
				<td colspan="3"><select>
						<option value="q1">Which is your favorite car model?</option>
						<option value="q2">Which is your nick name?</option>
				</select></td>
			</tr>
			<tr>

			</tr>
			<tr>
				<td colspan="4"><h3>Address Information</h3>
			</tr>
			<tr>
				<td>Address
				<td><input type="text" name="txtaddress">
				<td>Apt
				<td><input type="text" name="txtapt">
			</tr>
			<tr>
				<td>City
				<td>State <select>
						<option value="CAL">California</option>
						<option value="NY">NewYork</option>
				</select>
			</tr>
			<tr>
				<td>ZipCode
				<td>Country <select>
						<option value="USA">United Staes America</option>
						<option value="IND">NewYork</option>
				</select>
			</tr>
			<tr>
				<td colspan="2"><h3>Credit Card Information</h3>
			</tr>
			<tr>
				<td>Credit Card Company <select>
						<option value="Visa">Visa</option>
						<option value="MasterCard">MasterCard</option>
						<option value="Discover">Discover</option>
				</select>
				</td>
				<td><input type="text" placeholder="Credit card number"></td>
			</tr>
			<tr>
				<td><input type="text" placeholder="Name"></td>
				<td>Exp. Date <select>
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
				 <select>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
				</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="submit">
				<td colspan="1"><input type="reset" value="clear">
			</tr>
		</table>
	</form>
</body>
</html>