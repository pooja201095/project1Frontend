
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<br>
<div class="container">
<h2>Product List</h2>
<table class="table table-hover" id="category" class="display" border="1" width="80" align="center">
<tr>
<th>Sr No.</th><th>PID</th><th>Name</th><th>Supplier</th><th>Category</th><th>Price</th><th style="15">Description</th>
<th>Image</th><th class="span2">Action</th>
</tr>
<c:if test="${empty prodList }"><tr>
<td colspan="9" align="center">No Records Exists</td></tr>
</c:if>

<c:forEach var="c" varStatus="st" items="${prodList }">
<tr>
<td><c:out value="${st.count }"></c:out></td>
<td><c:out value="${c.id }"></c:out></td>
<td><c:out value="${c.name }"></c:out></td>
<td><c:out value="${c.supplier.sname }"></c:out></td>
<td><c:out value="${c.category.cname }"></c:out></td>
<td><c:out value="${c.price }"></c:out></td>
<td class="span2"><c:out value="${c.description }"></c:out></td>
<td><img src="${pageContext.request.contextPath }/resource/${c.imgname}" height="50px" width="50px"></td>
<td class="span4"><c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<a class="btn btn-info" role="button" href="<c:url value="/admin/deleteProduct/${c.id }"/>">Delete</a>
<a class="btn btn-info" role="button" href="${contextRoot }/admin/updateProduct?id=<c:out value="${c.id }"> </c:out>">Update</a></td>
</c:forEach>

</table>
</div>
<%@include file= "Foot.jsp" %>
</body>
</html>