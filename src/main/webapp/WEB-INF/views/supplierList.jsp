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

</head>
<body>

<br>
<div class="container">
<h2>Supplier List</h2>
<table class="table table-hover" id="category" class="display" border="1" width="80" align="center">
<tr>
<th>Sr No.</th><th>SID</th><th>Name</th><th class="span2">Action</th>
</tr>
<c:if test="${empty satList }"><tr>
<td colspan="3" align="center">No Records Exists</td></tr>
</c:if>

<c:forEach var="c" varStatus="st" items="${satList }">
<tr>
<td><c:out value="${st.count }"></c:out></td>
<td><c:out value="${c.sid }"></c:out></td>
<td><c:out value="${c.sname }"></c:out></td>
<td class="span4"><c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<a class="btn btn-info" role="button" href="<c:url value="/admin/deleteSupplier/${c.sid }"/>">Delete</a>
<a class="btn btn-info" role="button" href="${contextRoot }/admin/updateSupplier?sid=<c:out value="${c.sid }"> </c:out>">Update</a></td>
</c:forEach>

</table>
</div>
<%@include file= "Foot.jsp" %>




</body>
</html>