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
<div style="font-size: 1.5em; padding: 20px;">Room Search</div>
<form action="AdminRoomSearch.html" method="post" class="form-horizontal">
	<div class="form-group">
						<label class="control-label col-sm-2">Check-in</label>
						<div class="col-sm-3">
							<input type="date" name="checkin" class="form-control" required/>
						</div>
						<label class="control-label col-sm-2">Check-out</label>
						<div class="col-sm-3">
							<input type="date" name="checkout" class="form-control" required/>
						</div>
	</div>
	<div class="form-group">
			<div id="slow">
				<div id="toCopy">
						<div>
						<label class="control-label col-sm-2">Adults</label>
						<div class="col-sm-1">
							<input type="number" name="adultNo" min="0" max="4" class="form-control" value=1 />
						</div>
						<label class="control-label col-sm-2">Children</label>
						<div class="col-sm-1">
							<input  type="number" name="childNo" min="0" max="3" class="form-control" value=0 />
						</div>
					</div>
					
					</div>
				</div>	
						<label class="control-label col-sm-2">Rooms</label>
						<div class="col-sm-1">
							<select name="roomNo" id="mySelect"  class="form-control" >
							  <option value=1>1</option>
							  <option value=2>2</option>
							  <option value=3>3</option>
							  <option value=4>4</option>
							 </select>
							 
							 <div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" name="search" class="btn btn-primary" />
						</div>
</form> 
</body>
</html>