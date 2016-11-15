<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Forgot Password</title>
<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		
</head>
<body>

		<div class="form-group">
			<label class="control-label col-sm-2">Forgot Password </label>
			<div class="col-sm-10">


	<form:form role="form" action="forgotpasswordview.html" method="Post"
		class="form-horizontal">
		<div class="form-group">
			<label class="control-label col-sm-2">Email ID</label>
			<div class="col-sm-10">
				<input type="email" name="useremail" class="form-control" style="width:300px;"
					placeholder="Enter Email ID" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="submit" class="btn btn-primary">
				<input type="reset" value="clear" class="btn btn-danger">
			</div>
		</div>


	</form:form>
</body>
</html>