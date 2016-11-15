
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/responsiveslides.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>


<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>


</head>
<body>
<!---start-Wrap--->
	<!---start-header--->
	<div class="header">
		<div class="wrap">
			<div class="header-top">
				<div class="logo">
					<!-- <a href="index.html"><img src="../images/logo2.png"  title="logo" /></a> -->
					<div style="font-size: 3em; padding: 20px;">Book My Stay</div>
				</div>

				<div class="contact-info">
					<a href="<c:url value='/logout' />">Logout</a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="header-top-nav">
			<div class="wrap">
				<ul>
					<li class="active"><a href="HomeView.html">Home</a></li>
					<li><a href="ReservationConfirmView.html">Reservation</a></li>
					<li><a href="cart.html">Search History</a></li>
					<li><a href="EditProfile.html">Edit</a></li>
			
					<div class="clear"></div>
				</ul>
			</div>
		</div>
	</div>
<form role="form" action="addPayment.html" method="Post"  class="form-horizontal">
<div style="font-size: 1.5em; padding: 20px;">Credit Card Information</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Card Company</label>
					<div class="col-sm-4">
						<select name="cardType"  class="form-control">
						<option value="Visa">Visa</option>
						<option value="MasterCard">MasterCard</option>
						<option value="Discover">Discover</option>
						</select> 
					</div>
					<label class="control-label col-sm-2">Card No</label>
					<div class="col-sm-4">
						<input type="text" name="cardNo" class="form-control"  placeholder="Enter Card No"/>
					</div>
				</br>
				</br>
				</br>
			
				</br>
				<label class="control-label col-sm-2">Card Name</label>
					<div class="col-sm-4">
						<input type="text"  class="form-control" name="cardName"  placeholder="Enter Card Name" size="4" maxlength="4" />
					</div>
				
				
				
				
				<label class="control-label col-sm-2">Total amount to be paid:</label>
					<div class="col-sm-4">
					<input type="text"  class="form-control" name="paymentAmount"  value=${Payment} placeholder="Enter Card Name" />
					</div>
				
				
			
			 </div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
						</div>
							</form>
</body>
</html>