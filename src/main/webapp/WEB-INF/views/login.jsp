<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
 <%@include file= "Head.jsp" %>
 
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link href="resource/css/Log.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Login</title>

</head>

<body>
<div class="container">
<h1 style="text-align: center;">Login</h1>
<div class="card card-container">

<form action="perform_login" class="form-signin" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <f:errors path="email" cssClass="err"/><br>
                <input type="email" id="inputEmail" name="username" class="form-control" placeholder="Email address" required>
               
               <f:errors path="password" cssClass="err"/><br>
                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
               
               
               
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button role="button" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">LOGIN</button>
           <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
            </form>
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>

</div>
</div>
					
					
<%@include file= "Foot.jsp" %>
</body>
</html>