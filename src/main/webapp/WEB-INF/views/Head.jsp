<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.head{
width: 100%;
height: 70px;
background-color: transparent;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
  <div class="navbar-header">
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
  <span class="sr-only">Toggle navigation</span>
  <span class="icon-bar"></span>
   <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
  <img alt="logo" src="resource/Images/mu.jpg" align="left" width="70px" height="50px">
   </div>
  <!-- ==============Collect the nav links ==========================-->
  
      
      
      <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      <li class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach var="catVal" items="${catlist }">
      <li><a href="${pageContext.request.contextPath}/productCustList?cid=${catVal.cid }">${catVal.cname }</a></li>
      </c:forEach>
      </ul>
      </li>
      </ul>
      <!-- =================Right-align navigation bar================ -->
      <ul class="nav navbar-nav navbar-right">
    <c:if test="${pageContext.request.userPrincipal.name==null}">
      <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="${pageContext.request.contextPath}/goToLogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if> 
       <c:if test="${pageContext.request.userPrincipal.name!=null}">
      <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
      <li><a href="<c:url value="/logout"></c:url>">Logout</a></li>
      </c:if> 
    </ul>
    </div>
      </sec:authorize>
      
      
      
      <sec:authorize access="hasRole('ROLE_USER')">
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach var="catVal" items="${catlist }">
      <li><a href="${pageContext.request.contextPath}/productCustList?cid=${catVal.cid }">${catVal.cname }</a></li>
      </c:forEach>
      </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/goToCart">MyCart</a></li>
      <li><a href="contactus">Contact Us</a></li>
      </ul>
      <!-- =================Right-align navigation bar================ -->
      
      <ul class="nav navbar-nav navbar-right">
    <c:if test="${pageContext.request.userPrincipal.name==null}">
      <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="${pageContext.request.contextPath}/goToLogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name!=null}">
      <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
      <li><a href="<c:url value="/logout"></c:url>">Logout</a></li>
      </c:if>
    </ul>
    </div>
       </sec:authorize>
       
       
       
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/admin/adding">Admin</a></li>
      <li><a href="${pageContext.request.contextPath}/admin/productList">Admin List</a></li>
      <li><a href="${pageContext.request.contextPath}/admin/categoryList">Category List</a></li>
      <li><a href="${pageContext.request.contextPath}/admin/supplierList">Supplier List</a></li>
      </ul>
         <!-- =================Right-align navigation bar================ -->
      <ul class="nav navbar-nav navbar-right">
    <c:if test="${pageContext.request.userPrincipal.name==null}">
      <li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="${pageContext.request.contextPath}/goToLogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      
      
      <c:if test="${pageContext.request.userPrincipal.name!=null}">
      <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
      <li><a href="<c:url value="/logout"></c:url>">Logout</a></li>
      </c:if>
    </ul>
    </div>
      </sec:authorize>
      </div>
</nav>
</body>
</html>