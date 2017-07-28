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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link rel = "stylesheet"
   type = "text/css"
   href = "resource/css/Stylesheet1.css" />
<title>Contact Us</title>
</head>
<body>
       

    <div class="login-page">
  <div class="form">
    <form class="login-form">
    <label style="font: bold;color: black;">Name</label>
      <input type="text" name="name"/>
      <label style="font: bold;color: black;">Email</label>
      <input type="text" name="email"/>
      <label style="font: bold;color: black;">Mobile Number</label>
      <input type="text" name="mobno"/>
      <label style="font: bold;color: black;">Subject</label>
      <input type="password" name="sub"/>
      <label style="font: bold;color: black;">Message</label>
     <input type="textarea" name="message" maxlength="140" rows="7"/>
      <button style="font: bold;color: white;">Submit Form</button>
    </form>
  </div>
</div>


</body>
</html>