<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
 <%@include file= "Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "resource/css/Stylesheet1.css" />
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
<h1>Registration Form</h1>
	<div class="col-lg-12">
	<div class="row">
				<f:form modelAttribute="user" action ="saveregister" method="post">
					<div class="col-lg-12">
						
						<div class="form-group">
								<label>Name</label>
								<br>
								<f:input path="name" placeholder="Enter name..." class="form-control"/>
							</div>
						
							<div class="form-group">
								<label>Email</label>
								<br>
								<f:input path="email" placeholder="Enter mail id..." class="form-control"/>
							</div>
							
							<div class="form-group">
								<label>Address</label>
								<br>
								<f:input path="address" placeholder="Enter address..." class="form-control"/>
							</div>		
							
							<div class="form-group">
								<label>Password</label>
								<br>
								<f:input path="password" placeholder="Enter password..." class="form-control"/>
							</div>		
							
							<div class="form-group">
								<label>Phone No</label>
								<br>
								<f:input path="phone" placeholder="Enter phone..." class="form-control"/>
							</div>
					<button class="But1" type="button" class="btn btn-lg btn-info" >Submit</button>					
					</div>
					</f:form>
					</div>
					</div>
					</div>
</body>
</html>