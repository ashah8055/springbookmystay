<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Reply</title>
</head>
<body>
<h3>Feedback Reply</h3>
					    <form:form  modelAttribute="feedbackreply"  class="form-horizontal" action="AdminFeedbackReply.html" method="post">
				    	<div>
						    	<span><label>NAME :</label></span>
						    	 ${feedbackreply.feedback_name}
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    		${feedbackreply.feedback_email}
						    
						    </div>
						     <div>
						     	<span><label>MOBILE</label></span>
						     		${feedbackreply.phone}
						    
						    </div>
						    <div>
						    	<span><label>User Feedback :</label></span>
						    	${feedbackreply.feedback_message}
						    
						    </div>
						    <div>
						    	<span><label>Replay:</label></span>
						    	<span><form:textarea path="feedback_reply" rows="5" cols="30" /></span>
						    
						    </div>
						   
						   
						   <div>
						   		<span><input type="submit" value="Submit"></span>
						  </div>
					    </form:form>
<a href="feedbacklist.html">Back</a>

</body>
</html>