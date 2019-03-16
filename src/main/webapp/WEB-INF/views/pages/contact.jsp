<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Contact Us</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link href="static/css/company.css" rel="stylesheet">	
</head>
<body>


	<!-- Container (Contact Section) -->
	<div id="contact" class="container-fluid bg-grey">
	<h2 class="text-center">CONTACT</h2>
	<div class="row">
	    <div class="col-sm-5">
	      <p>Contact us and we'll get back to you within 24 hours.</p>
	      <p><span class="glyphicon glyphicon-map-marker"></span> Indore, IN</p>
	      <p><span class="glyphicon glyphicon-phone"></span> +91 8305968583</p>
	      <p><span class="glyphicon glyphicon-envelope"></span> millennium@Millennium.com</p>
	    </div>
	    
	 <form:form method="POST" modelAttribute="contact">
	          <form:input type="text" path="cName" class="form-control"   id="cName"  placeholder="Name" required="required" />
	          <form:input type="text" path="cMobile" class="form-control"  id="cMobile"  placeholder="Mobile" required="required" />
	          <form:input type="text" path="cEmail" class="form-control"  id="cEmail" placeholder="Email"  required="required" />
	       	  <form:textarea path="cComments" class="form-control"  id="cComments"  placeholder="Comments" rows="5" required="required" />
	          <button type="submit" class="btn btn-default pull-right" >Send</button>
	</form:form>
	
	</div>
	</div>
</body>
</html>