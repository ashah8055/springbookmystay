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
<form action="/updateRoom.html" method="post">

      <input type="hidden" name="id" value="${SpringWeb.id}  "  />
    Room Type:  <input type="text" name="type" value="${SpringWeb.type} "  />
    Room Number:  <input type="text" name="roomNo" value="${SpringWeb.roomNo} "  />
    Adult:  <input type="text" name="adultnum" value="${SpringWeb.adultnum} "  />
    childNum:  <input type="text" name="childnum" value="${SpringWeb.childnum} "  />
    capacity:  <input type="text" name="capacity" value="${SpringWeb.capacity} "  />


    <h2>Facilities Provided </h2>
    Smoke:    <input type="radio" name="smoke" value="yes" checked/></n>
    <input type="radio" name="smoke" value="no" /></n>
    Microwave:<input type="radio" name="facility.microwave" value="yes" checked /></n>
    <input type="radio" name="facility.microwave" value="no" /></n>
    FlatTv    <input type="radio" name="facility.flatTv" value="yes" checked /></n>
    <input type="radio" name="facility.flatTV" value="no" /></n>
    Mini Refrigerator <input type="radio" name="facility.miniRefrigerator" value="yes" checked /></n>
    <input type="radio" name="facility.miniRefrigerator" value="no" /></n>
    Balcony   <input type="radio" name="facility.balcony" value="yes"  checked/></n>
    <input type="radio" name="facility.balcony" value="no" /></n>
    <input type="submit" value="submit" name="submit" />









</form>


</body>

</html>