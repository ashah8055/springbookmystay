 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<!DOCTYPE HTML>
<html>
	<head>
		<title>Book My Stay</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
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
							<li><a href="firstpage.html">RoomSearch</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li class="active"><a href="contact.html">Contact</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>
			
			<!---End-header--->
			<div class="clear"> </div>
			<!---start-content----->
			<div class="content">
				<div class="wrap">
					<!-------start-contatct------>
					<div class="contact">
				<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
			    	 	<h3>Find Us Here</h3>
			    	 		<div class="map">
					   			<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<h3>Company Information :</h3>
						    	<p>For Online Reservation assistance, contact our Internet Reservations desk at 1-800-774-1500, from within the U.S. and Canada, or TDDY/TTY 1-800-368-1133. Customers outside the US may dial 00-1-800-774-1500, your call will be charged at international direct dial rates.
</p>
						   		<p>22-56-2-9</p>
						   		<p>USA</p>
				   		<p>Phone:(00) 222 666 444</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span>info@mycompany.com</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				   </div>
				</div>				
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3>Contact Us</h3>
					    <form:form  modelAttribute="feedback"  class="form-horizontal" action="contact.html" method="post">
				    	<div>
						    	<span><label>NAME</label></span>
						    	<span> <form:input path="feedback_name"  class="form-control"/></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><form:input path="feedback_email"  class="form-control" /></span>
						    </div>
						     <div>
						     	<span><label>MOBILE</label></span>
						    	<span><form:input path="phone"  class="form-control" /></span>
						    </div>
						    <div>
						    	<span><label>SUBJECT</label></span>
						    	<span><form:textarea path="feedback_message" rows="5" cols="30" /></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="Submit"></span>
						  </div>
					    </form:form>

				    </div>
  				</div>				
			  </div>
			</div>
					
			<!---End-content----->
		</div>
		<!---End-Wrap--->
	</body>
</html>

