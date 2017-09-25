<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@include file= "Head.jsp" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<title>Contact Us</title>
</head>
<body>

<!-- ============================================== -->
<div class="container">
<h1>Contact Us</h1>
	<div class="col-lg-12">
	<div class="row">
				<form>
					<div class="col-lg-12">
						
						<div class="form-group">
								<label>Name</label>
								<br>
								<f:input type="text" placeholder="Enter name..." class="form-control"/>
							</div>
						
							<div class="form-group">
								<label>Email</label>
								<br>
								<f:input type="text" placeholder="Enter mail id..." class="form-control"/>
							</div>
							
							<div class="form-group">
								<label>Mobile Number</label>
								<br>
								<f:input type="text" placeholder="Enter Number..." class="form-control"/>
							</div>		
							
							<div class="form-group">
								<label>Subject</label>
								<br>
								<f:input type="text" placeholder="Enter Subject..." class="form-control"/>
							</div>		
							
							<div class="form-group">
								<label>Message</label>
								<br>
								<f:input type="text" placeholder="Enter phone..." class="form-control"/>
							</div>
							<!-- <input class="But1" type="submit" value="Submit"> -->
					<button role="button" class="btn btn-lg btn-info" >SUBMIT</button>
					<%@include file= "Foot.jsp" %>				
					</div>
					<form>
					</div>
					</div>
					
					</div>
					<br>

<!-- ============================================== -->

</body>
</html>