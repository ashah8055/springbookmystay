	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
	<html>
	<head>
	<script>
function myFunction() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("userConfirmPassword").value;
    var ok = true;
    if (pass1 != pass2) {
        //alert("Passwords Do not match");
        document.getElementById("password").style.borderColor = "#E34234";
        document.getElementById("userConfirmPassword").style.borderColor = "#E34234";
        ok = false;
    }
    else {
      //  alert("Passwords Match!!!");
    }
    return ok;
}
</script>
	</head>
	
	
	
	<body>
	
	<form  action="EditProfile.html" method="Post"  class="form-horizontal" >
				<div style="font-size: 1.5em; padding: 20px;">Personal Information</div>
				<div class="form-group">
					<label class="control-label col-sm-2">First Name</label>
					<div class="col-sm-4">
						<input type="text" name="username" value=${SpringWeb.username} class="form-control"  placeholder="Enter First Name" required="required"/> 
					</div>
					<label class="control-label col-sm-2">Last Name</label>
					<div class="col-sm-4">
						<input type="text" name="userLname" value=${SpringWeb.userLname} class="form-control"  placeholder="Enter Last Name" /> 
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Email ID</label>
					<div class="col-sm-10">
						<input type="email" name="userEmail" class="form-control" value=${SpringWeb.userEmail} placeholder="Enter Email ID" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Password</label>
					<div class="col-sm-4">
						<input type="password" id="password" name="password" class="form-control" value=${SpringWeb.password}  placeholder="Enter Password" required="required"/>
					</div>
					<label class="control-label col-sm-2">Confirm Password</label>
					<div class="col-sm-4">
						<input type="password" id="userConfirmPassword" name="userConfirmPassword" value=${SpringWeb.password} class="form-control" placeholder="Enter Confirm Password" required="required"/> 
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Security Question</label>
					<div class="col-sm-4">
						<select name="securityAnswer" id="dept" class="form-control">
						<option value="1">Which is your favorite car model?</option>
						<option value="2">Which is your nick name?</option>
				</select>
					</div>
					<label class="control-label col-sm-2">Answer</label>
					<div class="col-sm-4">
						<input type="text" name="ans" class="form-control" placeholder="Enter Answer" /> 
					</div>
				</div>
				
	
				<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="submit" class="btn btn-primary">
		<input type="reset" value="clear" class="btn btn-danger">
						</div>
					</div>
			</form>
		</div>
	</div>
</div>



</body>
</html>