<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>User Home</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/responsiveslides.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
</head>
<body>
<!-- 
<div class="container">
<table class='table' border="2" align="center">
<tr>
<td><a href="HomeView.html">Home</a></td>
<td> <a href="<c:url value='/logout' />">Logout</a></td>
 <td><a href="Amenities">Amenities</a></td> 
<td><a href="ReservationConfirmView.html">Reservation</a></td>
 <td><a href="Contact">ContactUs</a></td>
</tr>
</table> -->
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
					<li><a href="HomeView.html">Home</a></li>
					<li><a href="ReservationConfirmView.html">Reservation</a></li>
					<li class="active"><a href="cart.html">Search History</a></li>
					<li><a href="EditProfile.html">Edit</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</div>
	</div>

<body>	
	
	
	<body>
	
	<form  action="EditProfile.html" method="Post"  class="form-horizontal" >
				<div style="font-size: 1.5em; padding: 20px;">Personal Information</div>
				<div class="form-group">
					<label class="control-label col-sm-2">First Name</label>
					<div class="col-sm-4">
						<input type="text" name="username" value=${SpringWeb.username} class="form-control"  placeholder="Enter First Name" required="required"/> 
					</div>
					<label class="control-label col-sm-2">Last Name</label>
					<div class="col-sm-4">
						<input type="text" name="userLname" value=${SpringWeb.userLname} class="form-control"  placeholder="Enter Last Name" /> 
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Email ID</label>
					<div class="col-sm-10">
						<input type="email" name="userEmail" class="form-control" value=${SpringWeb.userEmail} placeholder="Enter Email ID" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Password</label>
					<div class="col-sm-4">
						<input type="password" id="password" name="password" class="form-control" value=${SpringWeb.password}  placeholder="Enter Password" required="required"/>
					</div>
					<label class="control-label col-sm-2">Confirm Password</label>
					<div class="col-sm-4">
						<input type="password" id="userConfirmPassword" name="userConfirmPassword" value=${SpringWeb.password} class="form-control" placeholder="Enter Confirm Password" required="required"/> 
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
				
	
				<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
						</div>
					</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>