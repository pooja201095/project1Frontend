<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
	background: url(../resource/Images/bluewall.png)no-repeat;
	background-size: cover;
}
</style>
<link href="../resource/css/Reg.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1 style="text-align: center;">Update Supplier</h1>
<div class="card card-container">
<form class="form-signin" action="supplierUpdate" method="post">
							
								<label>Supplier Name</label>
								<br>
								<input type="hidden" name="sid" value="${sat.sid }"/>
								<input type="text" name="sname" value="${sat.sname }" class="form-control" placeholder="Enter Supplier name..." required/>
                
                
                <button role="button" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">SUBMIT</button>
                <button role="button" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">RESET</button>

           				
</form>
</div>
</div>
<%@include file= "Foot.jsp" %>
</body>
</html>