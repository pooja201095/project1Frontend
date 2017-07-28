<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="${pageContext.request.ContextPath}/resource/nav.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="page-header">
<br>
<h4>Admin Adding Page.........!!!!!!!!!!!!</h4>
<br>
</div>

<div class="container">
<div class="row">
<div class="col-md-6">
<div class="panel with-nav-tabs panel-primary">
<div class="panel-heading">
<ul>
<li class="active"><a href="#tab1primary" data-toggle="tab">Category</a></li>
<li><a href="#tab2primary" data-toggle="tab">Supplier</a></li>
<li><a href="#tab3primary" data-toggle="tab">Products</a></li>
</ul>
</div>
<!-- ======================================================== -->
<div class="panel-body">
<div class="tab-content">
<div class="tab-pane fade in active" id=#tab1primary>
<form action="<c:url value="/saveCat"/>" method="post">

<h4 class="input-title">Category</h4>
<input class="form-control" type="number" name="cid" required/><br>

<h4 class="input-title">Category Name</h4>
<input class="form-control" type="text" name="name" required/><br>

<button type="button" class="btn btn-lg btn-info">Submit</button>
<button type="reset" class="btn btn-lg btn-info">Reset</button>				


</form>

</div>
</div>
</div>



</div>
</div>
</div>

</div>

</div>


</body>
</html>