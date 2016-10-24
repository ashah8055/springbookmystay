<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Employee Management</title>
    <style>
        .error
        {
            color: #ff0000;
            font-weight: bold;
        }
        #listOfEmployees tr:first-child{
            font-weight: bold;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>


<br/>

<h1><span class="label label-success">Room </span><span class="label label-primary">InMotel</span></h1>


<table id="listOfRoom" class="table table-striped table-bordered table-list" border="1">
    <tr>
        <td>ID</td>
        <td>Type</td>
        <td>RoomNumber</td>
        <td>AdultNumber</td>
        <td>ChildNumber</td>
        <td>Microwave</td>
        <td>FlatTv</td>
        <td>miniRefrigerator</td>
        <td>balcony</td>
        <td>smoke</td>
        <td>Edit</td>





    </tr>

    <c:forEach items="${SpringWeb}" var="room">
        <tr>
            <td>${room.id}

            </td>
            <td>${room.type}</td>
            <td>${room.roomNo}</td>
            <td>${room.adultnum}</td>
            <td>${room.childnum}</td>
            <td>${room.facility.microwave}</td>
            <td>${room.facility.flatTV}</td>
            <td>${room.facility.miniFridge}</td>

            <td>${room.facility.balcony}</td>
            <td>${room.smoke}</td>
            <td><a href="/update.html?id=${room.id}">Edit</a></td>

        </tr>
    </c:forEach>
</table>

</body>
</html>