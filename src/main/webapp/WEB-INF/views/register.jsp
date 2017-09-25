<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
  <%@include file= "Head.jsp" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
function ValidateName() 
{
    var val = document.getElementById('name').value;
    
    if (!val.match(/^[a-zA-Z]+$/)) 
    {
        alert('Only alphabets are allowed');
        return false;
    }
    
    return true;
}
</script>

<style type="text/css">
body {
	background: url(resource/Images/bluewall.png)no-repeat;
	background-size: cover;
}
.err{
color: red;
}
.err-bdr{
border:1px solid red;
}
.bdr{
border:1px solid gray;
}
</style>
<link href="resource/css/Reg.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>

   </head>
<body>





<div class="container">
<h1 style="text-align: center;">Registration Form</h1>
<div class="card card-container">



<f:form modelAttribute="user" class="form-signin" action ="saveregister" method="post" onsubmit="return ValidateName()">
       <f:errors path="name" cssClass="err"/><br>
								<label>Name</label>
								<br>
								<f:input id="name" path="name" placeholder="Enter name..." class="form-control"/>
								
		
		<f:errors path="email" cssClass="err"/><br>
								<label>Email</label>
								<br>
								<f:input path="email" placeholder="Enter mail id..." class="form-control"/>					
                
         <f:errors path="address" cssClass="err"/><br>
								<label>Address</label>
								<br>
								<f:input path="address" placeholder="Enter address..." class="form-control"/>       
                
          <f:errors path="password" cssClass="err"/><br>
								<label>Password</label>
								<br>
								<f:input type="password" id="password" path="password" placeholder="Enter password..." class="form-control"/>
		
		<f:errors path="cpassword" cssClass="err"/><br>
								<label>Confirm Password</label>
								<br>
								<f:input type="password" id="cpassword" path="cpassword" placeholder="Confirm password..." class="form-control"/>
	<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("cpassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
							      
                <f:errors path="phone" cssClass="err"/><br>
								<label>Phone No</label>
								<br>
								<f:input path="phone" placeholder="Enter phone..." class="form-control"/>
							
                
                
                <button role="button" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" onclick="return Validate()">REGISTER</button>
           				
            </f:form>
</div>
</div>

<%@include file= "Foot.jsp" %>						
</body>
</html>