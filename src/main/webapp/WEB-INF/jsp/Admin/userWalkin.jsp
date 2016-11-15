<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Employee Management</title>
    <style>
        .error
        {
            color: #ff0000;
            font-weight: bold;
        }
        #listOfEmployees tr:first-child{
            font-weight: bold;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>View Room</title>
		<link href="../css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="../css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
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

<br/>
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
					
				<!-- 		<div class="form-group">
					<label class="control-label col-sm-2">Payment Amount</label>
					<div class="col-sm-10">
						<input type="text"  class="form-control" name="amount"  placeholder="Enter Payment Amount" />
					</div>
				</div>
			 -->	
			
					
			 
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
						</div>
				</form:form>
</body>
</html>