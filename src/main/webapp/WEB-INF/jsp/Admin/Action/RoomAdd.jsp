<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
    Document   : newjsp
    Created on : Oct 17, 2016, 1:28:16 PM
    Author     : manishpurohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Room Add</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<h2>Room Add</h2>
<form:form action="/addRoom1.html"  method="post">

    Room Type:  <form:input path="type"   type="text" />
    Room roomNumber  <form:input  path="roomNo" value="" />
    Adult   <form:input  path="adultnum" value="" />
    childNum <form:input path="childnum" value="" />
    capacity <form:input path="capacity" value="" />

    <h2>Facilities Provided </h2>
    Microwave:<form:radiobutton  path="facility.microwave" value="yes" /></n>
    <form:radiobutton  path="facility.microwave" value="no" /></n>


    FlatTv    <form:radiobutton  path="facility.flatTV" value="yes" /></n>
    <form:radiobutton  path="facility.flatTV" value="no" /></n>
    Mini Refrigerator <form:radiobutton path="facility.miniFridge" value="yes" /></n>
    <form:radiobutton path="facility.miniFridge" value="no" /></n>
    Balcony   <form:radiobutton path="facility.balcony" value="yes" /></n>
         <form:radiobutton path="facility.balcony" value="no" /></n>


    <input type="submit" value="submit">
</form:form>


</body>

</html>
