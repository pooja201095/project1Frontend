<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modal</title>
</head>
<body>
<div class="container">
<div>
<br>
</div>
<div class="modal fade bs-example-modal-lg" tabindex="1" role="dialog" aria-labelledby="myModal" aria-hidden="true" id="onload">
<div class="modal-dailog modal-sm">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">close</button>
</div>
<div class="modal-body">
<span>Added Sucessfully</span>
</div>
<div class="modal-footer">
<a href="index" class="btn btn-info" role="button">Home</a>
</div>
</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function()
		{
	$('#onload').modal('show');
	
		}
		);
</script>
</div>
</body>
</html>