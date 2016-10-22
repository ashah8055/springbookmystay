<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Rooms</title></head>
<body>
<table border=1>
<tr><th>ID</th><th>Type</th><th>No.</th><th>View</th><th>Reserve</th></tr>
<c:forEach items="${rooms}" var="room">
<tr>
  <td>${room.id}</td>
  <td>${room.type}</td>
  <td>${room.roomNo}</td>
  <td><a href="view.html?id=${room.id}">View</a></td>
  <td><a href="reserve.html?id=${room.id}">reserve</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>