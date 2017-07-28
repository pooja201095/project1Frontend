<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@include file= "Head.jsp" %>
      <%@include file= "Foot.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link rel = "stylesheet"
   type = "text/css"
   href = "resource/css/Stylesheet1.css" />
</head>
<body>
<div class="login-page">
  <div class="form">
    <form class="login-form">
    <label style="font: bold;color: black;">Username</label>
      <input type="text" name="username"/>
      <label style="font: bold;color: black;">Password</label>
      <input type="password" name="password"/>
      <button style="font: bold;colol: white;">login</button>
      <p class="message">Not registered? <a href="Register.jsp">Create an account</a></p>
    </form>
  </div>
</div>
</body>
</html>