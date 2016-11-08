<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
	<head>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<title>Search</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
		  
		  <script type="text/javascript">
$(document).ready(function(){
    $("#mySelect").change(function(){
    	var value=$(this).val()
    	//console.log(value);
    	if(value==1)
    		{
    		$(".added").remove();
    		}
    	$(".added").remove();
    	for(var i=0;i<value-1;i++)
    		{
    		
    		 $("#toCopy").clone().attr("class","added").appendTo("#slow");
    		
    		}
    
        
})
})
</script>
		  
		  
		  
	</head>
	<body>
		<!---start-Wrap--->
			<!---start-header--->
			<div class="header">
				<div class="wrap">
					<div class="header-top">
						<div class="logo">
							<!--<a href="index.html"><img src="images/logo2.png" height="40"  title="logo" /></a>-->
							<div style="font-size: 3em; padding: 20px;">Book My Stay</div>
							
						</div>
						<div class="contact-info">
							<a href="Signupview.html">SignUp</a> | 
							<a href="login.html">Login</a>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<div class="header-top-nav">
					<div class="wrap">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li class="active"><a href="firstpage.html">RoomSearch</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="contact.html">Contact</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>

<div class="container">
		<div class="row">
			<div class="col-md">
				<table class="table">
					<tr>
					</tr>
				</table>
			<div style="font-size: 1.5em; padding: 20px;">Room Search</div>
<form action="search.html" method="post" class="form-horizontal">
	<div class="form-group">
						<label class="control-label col-sm-2">Check-in</label>
						<div class="col-sm-3">
							<input type="date" name="checkin" class="form-control" required/>
						</div>
						<label class="control-label col-sm-2">Check-out</label>
						<div class="col-sm-3">
							<input type="date" name="checkout" class="form-control" required/>
						</div>
	</div>
	<div class="form-group">
			<div id="slow">
				<div id="toCopy">
						<div>
						<label class="control-label col-sm-2">Adults</label>
						<div class="col-sm-1">
							<input type="number" name="adultNo" min="0" max="4" class="form-control" value=1 />
						</div>
						<label class="control-label col-sm-2">Children</label>
						<div class="col-sm-1">
							<input  type="number" name="childNo" min="0" max="3" class="form-control" value=0 />
						</div>
					</div>
					
					</div>
				</div>	
						<label class="control-label col-sm-2">Rooms</label>
						<div class="col-sm-1">
							<select name="roomNo" id="mySelect"  class="form-control" >
							  <option value=1>1</option>
							  <option value=2>2</option>
							  <option value=3>3</option>
							  <option value=4>4</option>
							 </select>
						</div>
	</div>
	<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" name="search" class="btn btn-primary" />
						</div>
					</div>


</form>
		
		</div>
	
	</div>

</div>
</body>
</html>
