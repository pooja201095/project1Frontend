<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<title>Checkout</title>
</head>
<body>


<div class="container">
    <div class="row">
        <div class="col-xs-6 jumbotron">
            <div class="head">
                <h3><p>Customer Details</p></h3>
            </div>
            
            <div class="outer">
                <div class="well" style="width: 100%">
                    <form action="${pageContext.request.contextPath }/invoiceProcess" method="post">
                        <c:set var="gtot" value="0"></c:set>
                        <c:forEach var="c" items="${cart}">
                            <c:set var="gtot" value="${gtot + c.cartPrice * c.cartQuantity}"></c:set>
                        </c:forEach>
                    
                        <div class="well">
                            <table class="tbdetail">
                                <tr>
                                    <td colspan="3"><b>Name</b></td>
                                    <td>${user.name}</td>
                                </tr>
                    
                                <tr>
                                    <td colspan="3"><b>Email</b></td>
                                    <td>${user.email}</td>
                                </tr>
                    
                                <tr>
                                    <td colspan="3"><b>Phone</b></td>
                                    <td>${user.phone}</td>
                                </tr>
                    
                                <tr>
                                    <td colspan="3"><b>Customer Address</b></td>
                                    <td>${user.address}</td>
                                </tr>
                                
                                 <tr>
                                 <td colspan="3">
                                 <% Date d= new Date();
                                 out.println("<b>Date and Time</b>");
                                 out.println("<td>"+d.toString()+"</td>");
                                 %>
                                 </td>
                                    
                                </tr>
                    
                                <tr>
                                    <td colspan="3"><b>Total Amount</b></td>
                                    <td>${gtot}</td>
                                </tr>
                            </table>
                        </div>
                    
             <label>Payment</label>
                                <select name="payment">
                                    <option value="cod">Cash on delivery</option>
                                    <option value="Olnpayment">Online Payment</option>                                
                                </select>
                                <div><br></div>
                                <input type="text" name="cardnum" placeholder="Enter card number" style="width: 70%;">
                                <br><br>
                                <input type="text" name="name" placeholder="Enter name on card" style="margin-bottom: 10px; width: 70%;">
                                <br><br>
                        
                                <div>
                                    <table>
                                        <tr>
                                            <th colspan="2">Expiry</th>
                                            <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                            <th>CVV</th>
                                        </tr>
                        
                                        <tr>
                                            <td colspan="2">
                                                <input type="number" min="1" max="12" name="month" placeholder="mm">
                                                <br>
                                                <input type="number" min="1" max="12" name="year" placeholder="yy">
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td><input type="number" name="cvv" placeholder="cvv"></td>
                                        </tr>                    
                                    </table>                    
                                </div>           
                                <button role="button" type="submit">Invoice</button>   
                                </form>
                </div>
            </div>          
        </div>
    </div>
</div>

</body>
</html>