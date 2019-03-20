<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="utf-8">
	<title>Contact Us</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link href="static/css/company.css" rel="stylesheet">	
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home">HOME</a></li>
        <li><a href="home">SERVICES</a></li>
        <li><a href="home">PORTFOLIO</a></li>
        <li><a href="home">PRICING</a></li>
        <li><a href="home">ABOUT</a></li>
        <li><a href="contactUs">CONTACT</a></li>
        <li><a href="login">LOGIN</a></li>
	   	<li><a href="list-todos">TODO</a></li>       
      </ul>
    </div>
  </div>
</nav>

	<!-- Container (Contact Section) -->
	<div id="contact" class="container-fluid bg-grey">
	<h2 class="text-center">CONTACT</h2>
	<div class="row">
	    <div class="col-sm-5">
	    <h3 class="country-name">Indore</h3>
	      <p><!-- Detail of base loaction address --></p>
	      <p><span class="glyphicon glyphicon-map-marker"></span> Indore, IN -452001</p>
	      <p><span class="glyphicon glyphicon-phone"></span> +91 8305968583</p>
	      <p><span class="glyphicon glyphicon-envelope"></span> Indore@Millennium.com</p>
	    </div>
  	    <div class="col-sm-5">
  	    <h3 class="country-name">Hinjewadi MIDC</h3>
	      <p><!-- Detail of base loaction address --></p>
	      <p><span class="glyphicon glyphicon-map-marker"></span> Hinjawadi, Pune - 411057</p>
	      <p><span class="glyphicon glyphicon-phone"></span> +91 8305855378</p>
	      <p><span class="glyphicon glyphicon-envelope"></span> pune@Millennium.com</p>
	    </div>    
	    
	    
	    
	 <form:form method="POST" modelAttribute="contact">
	          <form:input type="text" path="cName" class="form-control"   id="cName"  placeholder="Name" required="required" />
	          <form:input type="text" path="cMobile" class="form-control"  id="cMobile"  placeholder="Mobile" required="required" />
	          <form:input type="text" path="cEmail" class="form-control"  id="cEmail" placeholder="Email"  required="required" />
	       	  <form:textarea path="cComments" class="form-control"  id="cComments"  placeholder="Comments" rows="5" required="required" /><br>
	          <button type="submit" class="btn btn-info btn-default pull-Centre" >Inquiry</button>
	</form:form>
	
	</div>
	</div>
	
<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Bootstrap Theme Made By <a href="/" title="Visit Millennium">Millennium</a></p>
</footer>

<script src="static/js/sample.js"></script>	
 </body>
</html>
