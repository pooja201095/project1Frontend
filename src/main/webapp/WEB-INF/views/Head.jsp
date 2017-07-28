<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel = "stylesheet"
   type = "text/css"
   href = "resource/css/Stylesheet1.css" />
</head>
<body>
<div>
<img alt="logo" src="resource/Images/logo1.png" align="left" width="150px" height="80px">
<h1><br>MuZic</h1>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      <li><a href="#">Categories</a>
      <li><a href="${pageContext.request.contextPath}/adding">Admin</a></li>
        
      </li>
      <li><a href="contactus">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"> Register</a></li>
      <li><a href="${pageContext.request.contextPath}/goToLogin"><span class="glyphicon glyphicon-log-in"> Login</a></li>
      
    </ul>
  </div>
</nav>

</body>
</html>