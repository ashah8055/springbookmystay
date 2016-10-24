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
<center>
<form:form role="form" modelAttribute="user" >
<table>
<tr>
	<td>Login :
	<td><input type="text" class="form-control"  name="txtlogin"/>
</tr>
<tr>
	<td>Password :
	<td><input type="password" class="form-control"  name="txtpassword"/>
</tr>
<tr align="center">
	<td ><input type="submit" value="Login" class="btn btn-primary">
	
</td>
	</tr>
	<tr>
	<td><a href="ForgotPassword">Forgot Password</a>
	</tr>
</table>
</form:form>
</center>
</body>
</html>