
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
	</head>
	<body onload='document.loginForm.username.focus();'>
		<!---start-Wrap--->
			<!---start-header--->
			<div class="header">
				<div class="wrap">
					<div class="header-top">
						<div class="logo">
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
						<th><div style="font-size: 2em; padding: 20px;">Login</div></th>
					</tr>
					<c:if test="${not empty error}">
						<tr><td><div class="error">${error}</div></td></tr>
					</c:if>
					<c:if test="${not empty msg}">
						<tr><td><div class="msg">${msg} ${sessionScope.mySessionAttribute}</div></td></tr>
					</c:if>
					<tr>
					<td>
					
						<form name='loginForm' action="<c:url value='login' />" method='POST' class="form-horizontal">
	  				  					
	  					<div class="form-group">
						<label class="control-label col-sm-2">User Name</label>
						<div class="col-sm-4">
							<input type='text' name='username'  class="form-control" placeholder="Enter Username" />
						</div>
						</div>
						<div class="form-group">
						<label class="control-label col-sm-2">Password</label>
						<div class="col-sm-4">
							<input type='password' name='password'  class="form-control" placeholder="Enter Password" />
						</div>
						</div>
						<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary" />
						</div>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		  			</form>
		  			</td>
		  			</tr>
		  			<tr><td><a href="Signupview.html">SignUp</a></td></tr>
				</table>
				
			</div>
		</div>
	</div>
	
</body>
</html>