<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>SignUp</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		
<script>
function myFunction() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("userConfirmPassword").value;
    var ok = true;
    if (pass1 != pass2) {
        //alert("Passwords Do not match");
        document.getElementById("password").style.borderColor = "#E34234";
        document.getElementById("userConfirmPassword").style.borderColor = "#E34234";
        ok = false;
    }
    else {
      //  alert("Passwords Match!!!");
    }
    return ok;
}
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
							<li><a href="firstpage.html">RoomSearch</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="contact.html">Contact</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>
			
			<!---End-header--->
			<div class="clear"> </div>


<div class="container">
	<div class="row">
		<div class="col-md">
		<table class="table">
					<tr>
					</tr>
				</table>
			<form:form role="form" action="Signup.html" method="Post"  class="form-horizontal" onsubmit="return myFunction()">
				<div style="font-size: 1.5em; padding: 20px;">Personal Information</div>
				<div class="form-group">
					<label class="control-label col-sm-2">First Name</label>
					<div class="col-sm-4">
						<input type="text" name="username" class="form-control"  placeholder="Enter First Name" required="required"/> 
					</div>
					<label class="control-label col-sm-2">Last Name</label>
					<div class="col-sm-4">
						<input type="text" name="userLname" class="form-control"  placeholder="Enter Last Name" /> 
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Email ID</label>
					<div class="col-sm-10">
						<input type="email" name="userEmail" class="form-control"  placeholder="Enter Email ID" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Password</label>
					<div class="col-sm-4">
						<input type="password" id="password" name="password" class="form-control"  placeholder="Enter Password" required="required"/>
					</div>
					<label class="control-label col-sm-2">Confirm Password</label>
					<div class="col-sm-4">
						<input type="password" id="userConfirmPassword" name="userConfirmPassword" class="form-control" placeholder="Enter Confirm Password" required="required"/> 
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Security Question</label>
					<div class="col-sm-4">
						<select name="securityAnswer" id="dept" class="form-control">
						<option value="1">Which is your favorite car model?</option>
						<option value="2">Which is your nick name?</option>
				</select>
					</div>
					<label class="control-label col-sm-2">Answer</label>
					<div class="col-sm-4">
						<input type="text" name="ans" class="form-control" placeholder="Enter Answer" /> 
					</div>
				</div>
				
		<!-- 		<div style="font-size: 1.5em; padding: 20px;">Address Information</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Address</label>
					<div class="col-sm-4">
						<input type="text" name="address.addr1" class="form-control"  placeholder="Enter Address" /> 
					</div>
					<label class="control-label col-sm-2">Apt</label>
					<div class="col-sm-4">
						<input type="text" name="address.addr2" class="form-control"  placeholder="Enter Apt" /> 
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">City</label>
					<div class="col-sm-4">
						<input type="text" name="address.city" class="form-control"  placeholder="Enter City" /> 
					</div>
					<label class="control-label col-sm-2">State</label>
					<div class="col-sm-4">
						<select name="address.State" id="securityAnswer" class="form-control" >
								<option value="CAL">California</option>
								<option value="NY">NewYork</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Zip Code</label>
					<div class="col-sm-4">
						<input type="text" name="address.zipcode" class="form-control"  placeholder="Enter Zip Code" /> 
					</div>
					<label class="control-label col-sm-2">Country</label>
					<div class="col-sm-4">
						<select name="address.country"  class="form-control">
								<option value="USA">United Staes America</option>
								<option value="IND">India</option>
						</select>
					</div>
				</div>
		 -->		
			<!-- 	<div style="font-size: 1.5em; padding: 20px;">Credit Card Information</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Card Company</label>
					<div class="col-sm-4">
						<select name="securityCard.cardType"  class="form-control">
						<option value="Visa">Visa</option>
						<option value="MasterCard">MasterCard</option>
						<option value="Discover">Discover</option>
						</select> 
					</div>
					<label class="control-label col-sm-2">Card No</label>
					<div class="col-sm-4">
						<input type="text" name="securityCard.cardNo" class="form-control"  placeholder="Enter Card No"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Card Name</label>
					<div class="col-sm-10">
						<input type="text"  class="form-control" name="securityCard.name"  placeholder="Enter Card Name" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Exp Date</label>
					<div class="col-sm-4">
						<select name="securityCard.card_expdate" id="cardtype" class="form-control">
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
					</div>
					<label class="control-label col-sm-2">Exp Year</label>
					<div class="col-sm-4">
						<select name="card_expdate"  class="form-control">
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
				</select>
					</div>
				</div>
			 -->	
				<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
						</div>
					</div>
			</form:form>
		</div>
	</div>
</div>



</body>
</html>