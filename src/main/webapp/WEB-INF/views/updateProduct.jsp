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
<h1 style="text-align: center;">Product Update</h1>
<div class="card card-container">


<c:url value="/admin/productUpdate" var="pru"></c:url>
<form action="productUpdate" method="post" class="form-signin" enctype="multipart/form-data">

       
       <label>Product Name</label>
<input type="hidden" name="pid" value="${prod.id }" class="form-control"/>
<input type="text" name="pName" value="${prod.name }" class="form-control" required/>

<br>
<label>Price</label>
<input type="text" name="pPrice" value="${prod.price }" class="form-control" required/>
<br>


<label>Stock</label>
<input type="text" name="pStock" value="${prod.stock }" class="form-control" required/>
<br>


<label>Description</label>
<input type="text" name="pDescription" value="${prod.description }" class="form-control" required/>
<br>

<label>Product Category</label>
<select name="pcategory">
<option value="0" class="form-control">----Category----</option>
<c:forEach items="${catlist }" var="cate">
<option value="${cate.cid }">${cate.cname }</option>
</c:forEach>
</select>
<br>


<label>Product Supplier</label><br>
<select name="psupplier">
<option value="0" class="form-control">----Supplier----</option>
<c:forEach items="${satlist }" var="sate">
<option value="${sate.sid }">${sate.sname }</option>
</c:forEach>
</select>


<tr>
<div class="fileinput fileinput-new" data-provides="fileinput">
<tr>
<td>Image</td>
<td><input class="form-control" type="file" name="file" accept="resource/*"></td>

</div>
       
        <button role="button" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">SUBMIT</button>
        <button role="button" class="btn btn-lg btn-primary btn-block btn-signin" type="submit">RESET</button>
           				
            </form>
</div>
</div>
<%@include file= "Foot.jsp" %>	
</body>
</html>



<%-- <br>
<div class="container">
<c:url value="/admin/productUpdate" var="pru"></c:url>
<form action="productUpdate" method="post" enctype="multipart/form-data">
<label>Product Name</label>
<input type="hidden" name="pid" value="${prod.id }"/>
<input type="text" name="pName" value="${prod.name }" required/>

<br>
<label>Price</label>
<input type="text" name="pPrice" value="${prod.price }" required/>
<br>


<label>Stock</label>
<input type="text" name="pStock" value="${prod.stock }" required/>
<br>


<label>Description</label>
<input type="text" name="pDescription" value="${prod.description }" required/>
<br>



<label>Product Category</label>
<select name="pcategory">
<option value="0">----Category----</option>
<c:forEach items="${catlist }" var="cate">
<option value="${cate.cid }">${cate.cname }</option>
</c:forEach>
</select>
<br>


<label>Product Supplier</label>
<select name="psupplier">
<option value="0">----Supplier----</option>
<c:forEach items="${satlist }" var="sate">
<option value="${sate.sid }">${sate.sname }</option>
</c:forEach>
</select>


<tr>
<div class="fileinput fileinput-new" data-provides="fileinput">
<tr>
<td>Image</td>
<td><input class="form-control" type="file" name="file" accept="Images/*"></td>

</div>
<input class="But1" type="submit" value="Submit"/>
<input class="But1" type="submit" value="Reset"/>


</form>
</div>
<%@include file= "Foot.jsp" %> --%>