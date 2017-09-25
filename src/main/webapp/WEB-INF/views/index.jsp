<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
      

<html>
<head>
<style type="text/css">
body {
	background: url(resource/Images/bluewall.png)no-repeat;
	background-size: cover;
}
</style>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   

<title>Index</title>
</head>
<body>
  <%@include file= "Head.jsp" %>


<br>   
  
<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">  
  
    <!-- Wrapper for slides -->  
    <div class="carousel-inner" role="listbox" style="width: 100%; height: 450px;">  
      <div class="item active">  
        <img src="resource/Images/Trumpet1.png" alt="Casio" style="height: 450px; width:100%;" >  
      </div>  
  
      <div class="item">  
        <img src="resource/Images/gui3.png" alt="Guitar" style="height: 450px; width:100%;">  
      </div>  
      
      <div class="item">  
        <img src="resource/Images/vio2.png" alt="Violen" style="height: 450px; width:100%;">  
      </div>  
    </div>  
  
    <!-- Left and right controls -->  
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">  
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  
      <span class="sr-only">Previous</span>  
    </a>  
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">  
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  
      <span class="sr-only">Next</span>  
    </a>  
</div><!-- corousel end -->   

<br>
<br>

<div class="container-fluid">
  <div class="row">
    <div class="col-sm-4" style="background-color:transparent;"><img id="left" alt="tabla" src="resource/Images/tab2.png" align="left" height="200px" width="250px"></div>
    <div class="col-sm-4" style="background-color: transparent;"><img id="center" alt="drumset" src="resource/Images/bagpipe1.png" align="middle"  height="200px" width="250px"></div>
    <div class="col-sm-4" style="background-color: transparent;"><img id="right" alt="harmonium" src="resource/Images/Veena1.png" align="right" height="200px" width="250px"></div>
  </div>
</div>
<br>
<br>
<br>


<%@include file= "Foot.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  

</body>
</html>