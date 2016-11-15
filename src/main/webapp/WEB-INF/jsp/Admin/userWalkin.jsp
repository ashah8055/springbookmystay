<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User reservation</title>
<script>
$(document).ready(function(){

	$(".show").hide();
	$(".credit_card").show();

	});
</script>
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
<form:form role="form" action="userWalkin2.html" method="Post"  class="form-horizontal">

		
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
				
						Mode of Payment:
						</br>
					Credit Card	<input type="checkbox" id="credit_card" value="Credit card" /></br>
					Cash	<input type="checkbox" id="cash" value="Cash" />
					</br></br>
					<div id="show">
				 	<div style="font-size: 1.5em; padding: 20px;">Credit Card Information</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Card Company</label>
					<div class="col-sm-4">
						<select name="securityCard[0].cardType"  class="form-control">
						<option value="Visa">Visa</option>
						<option value="MasterCard">MasterCard</option>
						<option value="Discover">Discover</option>
						</select> 
					</div>
					<label class="control-label col-sm-2">Card No</label>
					<div class="col-sm-4">
						<input type="text" name="securityCard[0].cardNo" class="form-control"  placeholder="Enter Card No"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Card Name</label>
					<div class="col-sm-10">
						<input type="text"  class="form-control" name="securityCard[0].name"  placeholder="Enter Card Name" />
					</div>
				</div>
				</div>
				
					</div>
					
						<div class="form-group">
					<label class="control-label col-sm-2">Payment Amount</label>
					<div class="col-sm-10">
						<input type="text"  class="form-control" name="amount"  placeholder="Enter Payment Amount" />
					</div>
				</div>
				
			
					
			 
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
						</div>
				</form:form>
</body>
</html>