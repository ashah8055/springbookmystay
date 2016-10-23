<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
//<jstl:out value="${project.bg.attribute}"/>
<html>
<head><title>Reservations</title></head>
<body>

Check-in:${checkin}</br>
Check-out:${checkout}</br>
<table border=1>
<tr><th>ID</th><th>Type</th><th>No.</th><th>View</th><th>Reserve</th></tr>
<c:forEach items="${reservations}" var="reservation">

<tr>
  <form action="reserve.html" method="POST">
  <td>${reservation.id}</td>
  <td>${reservation.checkin}</td>
  <td>${reservation.checkout}</td>
  <td>${reservation.status}</td>
  
  </td>
  </form>
</tr>
</c:forEach>
</table>

</body>
</html>