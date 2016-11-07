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
					<li class="active"><a href="ReservationConfirmView.html">Reservation</a></li>
					<li><a href="cart.html">Search History</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</div>
	</div>

<table id="listOfRoom" class="table table-striped table-bordered table-list" border="1">
    <tr>
        <th>Reservation Code</th>
        <th>checkin</th>
        <th>checkout</th>
        <th>Total Rate</th>
        <th>Status</th>
        <th>cancel</th>
    </tr>
    <c:forEach items="${SpringWeb}" var="room">
        <tr>
         <td>${room.reservation_code}</td>
         <td>${room.checkin}</td>
         <td>${room.checkout}</td>
         <td>${room.room.defaultRate}</td>
         
         <c:choose>
         <c:when test="${room.status==true}">
         <td>Active</td>
         <td>
         <a href="cancel.html?id=${room.id}" >Cancel</a>
         </td>
         </c:when>
         <c:otherwise>
         <td>Cancelled</td>
         <td>
          </br>
          </td>
         </c:otherwise>
         </c:choose> 
         
        </tr>
    </c:forEach>
</table>
</body>
</html>


