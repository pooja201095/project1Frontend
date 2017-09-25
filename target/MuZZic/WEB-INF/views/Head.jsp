<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--   <link rel = "stylesheet"
   type = "text/css"
   href = "resource/css/Stylesheet1.css" /> -->
   
</head>
<body>
<div>
<img alt="logo" src="resource/Images/logo1.png" align="left" width="150px" height="80px">
<h1>MuZic</h1>
</div>
<nav class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
  <div class="navbar-header">
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
  <span class="sr-only">Toggle navigation</span>
  <span class="icon-bar"></span>
   <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
  
  
  
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach var="catVal" items="${catlist }">
      <li><a href="${pageContext.request.contextPath}/productCustList?cid=${catVal.cid }">${catVal.cname }</a></li>
      </c:forEach>
      </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/adding">Admin</a></li>
      <li><a href="${pageContext.request.contextPath}/productList">Admin List</a></li>
      <li><a href="${pageContext.request.contextPath}/categoryList">Category List</a></li>
      <li><a href="${pageContext.request.contextPath}/supplierList">Supplier List</a></li>
      
      <li><a href="contactus">Contact Us</a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"> Register</a></li>
      <li><a href="${pageContext.request.contextPath}/goToLogin"><span class="glyphicon glyphicon-log-in"> Login</a></li>
      
    </ul>
    </div>
  </div>
  </div>
</nav>

</body>
</html>