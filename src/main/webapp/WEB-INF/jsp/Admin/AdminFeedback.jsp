<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Feedback</h3>
<table border="1">
<tr><th>Name</th><th>Phone</th><th>email</th><th>Message</th><th>Reply</th><th></th></tr>
<c:forEach items="${feedbacklist}" var="flist">
<tr>
  <td>${flist.feedback_name}</td>
  <td>${flist.phone}</td>
  <td>${flist.feedback_email}</td>
  <td>${flist.feedback_message}</td>
  <td>${flist.feedback_reply}</td>
  
  <td><a href="AdminFeedbackReply.html?id=${flist.id}">Reply</a>
</tr>

</c:forEach>
</table>

<a href="AdminHomeView.html">Back</a>
</body>
</html>