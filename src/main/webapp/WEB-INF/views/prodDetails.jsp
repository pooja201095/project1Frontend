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
	background: url(../resource/Images/bluewall.png)no-repeat;
	background-size: cover;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>
<body>

<br>
<div class="container">
<div class="row">
<div class="col-md-6 item-photo">

<img src="${pageContext.request.contextPath }/resource/${product.imgname }" style="max-width: 100%;margin-top: 5opx;"><br>
</div>
<div class="col-lg-6">
<label>Name</label>
<h2>${product.name }</h2>
<label>Description</label>
<h4>${product.description }</h4>
<label>Price</label>
<h5>${product.price }</h5>
<label>Vendor</label>
<h5>${product.supplier.sname }</h5>

<div class="section">
<form action="${pageContext.request.contextPath }/addToCart" method="post">

<input type="hidden" value="${product.id }" name="pid"/>

<input type="hidden" value="${product.price }" name="pPrice"/>

<input type="hidden" value="${product.name }" name="pName"/>

<input type="hidden" value="${product.imgname }" name="pImgname"/>

<input type="hidden" value="${product.stock }" name="pQuantity"/><br>


<label>Mention the quantity</label>
<input type="number" class="form-control" name="quant" required/><br>

<input class="btn btn-primary btn-lg" type="submit" value="Add To Cart">
</form>

</div>

</div>
</div>
</div>

</body>
</html>