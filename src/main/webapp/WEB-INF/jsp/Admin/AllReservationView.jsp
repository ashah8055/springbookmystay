<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>

<title>Reservations</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/responsiveslides.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
							<li><a href="allReservation.html">Reservation</a></li>
							<li><a href="viewUsers.html">Users</a></li>
							<li><a href="AdminRoomSearch.html">User Reservation</a></li>
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
<table  class="table table-striped table-bordered table-list">

<tr><th>ID</th><th>Checkin</th><th>Checkout</th><th>status</th> <th>cancel</th><th>user</th></tr>

<c:forEach items="${reservation}" var="reservation">



<tr>
  <form action="reserve.html" method="POST">
  <td>${reservation.id}</td>
  <td>${reservation.checkin}</td>
  <td>${reservation.checkout}</td>

  <c:choose>
     <c:when test="${reservation.status==true}">
         <td>Active</td>
         <td>
         <a href="cancelReservation.html?id=${reservation.id}" >Cancel</a>
         </td>
     </c:when>
     <c:otherwise>
         <td>Cancelled</td>
         <td>
          </br>
          </td>
     </c:otherwise>
 </c:choose>
 <td><a href="showuser.html?id=${reservation.user.id}" >${reservation.user.username}</a></td>
</tr>
</c:forEach>

</table>
</div></div></div>

</body>
</html>