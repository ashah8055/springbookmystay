<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Room Edit</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Room Edit </title>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/responsiveslides.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
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
							<li><a href="AdminHomeView.html">Home</a></li>
							<li><a href="addRoom.html">RoomAdd</a></li>
							<li class="active"><a href="viewRoom.html">RoomEdit</a></li>
							<li><a href="allReservation.html">Reservation</a></li>
							<li><a href="viewUsers.html">Users</a></li>
							<li><a href="userWalkin.html">User Reservation</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>
	<!---End-header--->
	<div class="clear"></div>
	<div class="container">
		<div class="row">
			<div class="col-md">
				<table class="table">
					<tr>
					</tr>
				</table>


 
				<form action="updateRoom.html" method="post" class="form-horizontal">

					<div class="form-group">
						<label class="control-label col-sm-2">Room Type</label>
						<div class="col-sm-2">
							<input type="hidden" name="id" value="${SpringWeb.id}"  />
							<input type="text" name="type" value="${SpringWeb.type}" class="form-control" placeholder="Enter Room Type" required="required" />
						</div>
						<label class="control-label col-sm-2">Room Number</label>
						<div class="col-sm-2">
							<input type="text" name="roomNo" value="${SpringWeb.roomNo}" class="form-control" placeholder="Enter Room Number" required="required" />
						</div>
						<label class="control-label col-sm-2">Capacity</label>
						<div class="col-sm-2">
							<input type="text" name="capacity" value="${SpringWeb.capacity}" class="form-control" placeholder="Enter Capacity" required="required"/>
						</div>
						<label class="control-label col-sm-2">Rate</label>
						<div class="col-sm-2">
							<input type="text" name="defaultRate" value="${SpringWeb.defaultRate}" class="form-control" placeholder="Enter Rate" required="required"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">Availability</label>
						<div class="col-sm-1 checkbox">
							<label>
								 <c:if test="${!SpringWeb.flag}">
								<input type="checkbox" name="flag"   > 
								</c:if> 
								
								<c:if test="${SpringWeb.flag}">
								<input type="checkbox" name="flag" checked  > 
								</c:if> 
							</label>
						</div>
						<label class="control-label col-sm-2">Smoke</label>
						<div class="col-sm-1 checkbox">
							<label>
								<c:if test="${!SpringWeb.smoke}">
								<input type="checkbox" name="smoke"   > 
								</c:if> 
								
								<c:if test="${SpringWeb.smoke}">
								<input type="checkbox" name="smoke" checked  > 
								</c:if> 
							</label>
						</div>
					</div>
					<div style="font-size: 1.5em; padding: 20px;">Facilities
						Provided</div>
					<div class="form-group">
						<label class="control-label col-sm-2">Microwave</label>
						<div class="col-sm-1 checkbox">
							<label>
							<c:if test="${!SpringWeb.facility.microwave}">
							<input type="checkbox" name="facility.microwave"   > 
							</c:if> 
							
							<c:if test="${SpringWeb.facility.microwave}">
							<input type="checkbox" name="facility.microwave" checked  > 
							</c:if> 
							</label>
						</div>
						<label class="control-label col-sm-2">FlatTv</label>
						<div class="col-sm-1 checkbox">
							<label><form:checkbox path="facility.flatTV" value="yes" />
							 <c:if test="${!SpringWeb.facility.flatTV}">
							<input type="checkbox" name="facility.flatTV"   > 
							</c:if> 
							
							<c:if test="${SpringWeb.facility.flatTV}">
							<input type="checkbox" name="facility.flatTV" checked  > 
							</c:if>
							</label>
						</div>
						<label class="control-label col-sm-2">Mini Refrigerator</label>
						<div class="col-sm-1 checkbox">
							<label>
							<c:if test="${!SpringWeb.facility.miniFridge}">
							<input type="checkbox" name="facility.miniFridge"   > 
							</c:if> 
							
							<c:if test="${SpringWeb.facility.miniFridge}">
							<input type="checkbox" name="facility.miniFridge" checked  > 
							</c:if>  
							</label>
						</div>
						<label class="control-label col-sm-2">Balcony</label>
						<div class="col-sm-1 checkbox">
							<label>
								<c:if test="${!SpringWeb.facility.balcony}">
								<input type="checkbox" name="facility.balcony"   > 
								</c:if> 
								
								<c:if test="${SpringWeb.facility.balcony}">
								<input type="checkbox" name="facility.balcony" checked  > 
								</c:if> 
							</label>
						</div>
						
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary" />
						</div>
					</div>
					
				</form>

			</div>
		</div>
	</div>
	 <!--  
	<a href="AdminHomeView.html">Home</a>
	
	
<h2>Room Edit</h2>
<form action="updateRoom.html" method="post">

  
   
     Room Number:  <input type="text" name="roomNo" value="${SpringWeb.roomNo}"  />
     Room Type:  <input type="text" name="type" value="${SpringWeb.type}"  />
    
   capacity:  <input type="text" name="capacity" value="${SpringWeb.capacity}"  />
 
 <c:if test="${!SpringWeb.flag}">
Availability<input type="checkbox" name="flag"   > 
</c:if> 

<c:if test="${SpringWeb.flag}">
Availability<input type="checkbox" name="flag" checked  > 
</c:if>  
    
 	
   <h2>Facilities Provided </h2>
   </br>

 <c:if test="${!SpringWeb.facility.microwave}">
microwave<input type="checkbox" name="facility.microwave"   > 
</c:if> 

<c:if test="${SpringWeb.facility.microwave}">
microwave<input type="checkbox" name="facility.microwave" checked  > 
</c:if>  	
 </br>	

 <c:if test="${!SpringWeb.facility.flatTV}">
flatTV<input type="checkbox" name="facility.flatTV"   > 
</c:if> 

<c:if test="${SpringWeb.facility.flatTV}">
flatTV<input type="checkbox" name="facility.flatTV" checked  > 
</c:if>  

</br>

 <c:if test="${!SpringWeb.facility.miniFridge}">
miniFridge<input type="checkbox" name="facility.miniFridge"   > 
</c:if> 

<c:if test="${SpringWeb.facility.miniFridge}">
miniFridge<input type="checkbox" name="facility.miniFridge" checked  > 
</c:if>  

</br>

 <c:if test="${!SpringWeb.facility.balcony}">
balcony<input type="checkbox" name="facility.balcony"   > 
</c:if> 

<c:if test="${SpringWeb.facility.balcony}">
balcony<input type="checkbox" name="facility.balcony" checked  > 
</c:if>   	
 	
 	
 </br>	
 	
 	 <input type="submit" value="submit">
 
    

</br>








</form>
 
			<a href="<c:url value='/logout' />">Logout</a>
-->
</body>

</html>