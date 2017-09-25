 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@include file= "Head.jsp" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
	background: url(resource/Images/bluewall.png)no-repeat;
	background-size: cover;
}
</style>
<link href="resource/css/Reg.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Contact Us</title>
</head>
<body>
<div class="container">
<h1 style="text-align: center;">Contact Us</h1>
<div class="card card-container">



<form class="form-signin" method="post">
       
        
        
								<label>Name</label>
								<br>
								<input type="text" placeholder="Enter name..." class="form-control"/>
							
								<label>Email</label>
								<br>
								<input type="text" placeholder="Enter mail id..." class="form-control"/>
							
							
							
								<label>Mobile Number</label>
								<br>
								<input type="text" placeholder="Enter Number..." class="form-control"/>
								
							
							
								<label>Subject</label>
								<br>
								<input type="text" placeholder="Enter Subject..." class="form-control"/>
									
							
							
								<label>Message</label>
								<br>
								<input type="text" placeholder="Enter phone..." class="form-control"/>
							
                
                
                <button role="button" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">SUBMIT</button>
           				
            </form>
</div>
</div>

<%@include file= "Foot.jsp" %>	



</body>
</html>