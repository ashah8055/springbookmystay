<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head><title>Rooms</title></head>
<body>

Check-in:${checkin}</br>
Check-out:${checkout}</br>
<table border=1>
<tr><th>ID</th><th>Type</th><th>No.</th><th>View</th><th>Reserve</th></tr>
<c:forEach items="${rooms}" var="room">
<tr>
  <form action="reserve.html" method="POST">
  <td>${room.id}</td>
  <td>${room.type}</td>
  <td>${room.roomNo}</td>
  <td><a href="view.html?id=${room.id}">View</a></td>
  <td><input type="hidden" name="roomid" value="${room.id}"/>
  <input type="hidden" name="checkin" value="${checkin}"/>
  <input type="hidden" name="checkout" value="${checkout}"/>
  <input type="submit" name="submit" value="Reserve" />
  </td>
  </form>
</tr>
</c:forEach>
</table>

</body>
</html>