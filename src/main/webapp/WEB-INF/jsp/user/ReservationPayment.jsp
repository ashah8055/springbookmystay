<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header-top-nav">
<div class="contact-info">
					<a href="<c:url value='/logout' />">Logout</a>
				</div>
					<div class="wrap">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li class="active"><a href="firstpage.html">RoomSearch</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="contact.html">Contact</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
<form:form role="form" action="addPayment.html" method="Post"  class="form-horizontal">
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
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Card Name</label>
					<div class="col-sm-10">
						<input type="text"  class="form-control" name="cardName"  placeholder="Enter Card Name" />
					</div>
				</div>
				</br>
				Total amount to be paid:
				<div class="col-sm-10">
						<input type="text"  class="form-control" name="paymentAmount"  value=${Payment} placeholder="Enter Card Name" />
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