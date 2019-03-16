<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
	<title>Login page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
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
        <li><a href="#services">SERVICES</a></li>
        <li><a href="#portfolio">PORTFOLIO</a></li>
        <li><a href="#pricing">PRICING</a></li>
        <li><a href="#about">ABOUT</a></li>
        <li><a href="contactUs">CONTACT</a></li>
        <li><a href="login">LOGIN</a></li>
      </ul>
    </div>
  </div>
</nav>

	<div class="container">
	<c:url var="loginUrl" value="/login" />
	<br><br>
	<h3 align="center"><b>Login page</b></h3> 
    <a href="home" class="myButton1"> Back </a>
    <a href="newuser"  class="myButton1"> Registration </a><br> 
	    <form action="${loginUrl}" method="post" class="form-horizontal"> 
	        <c:if test="${param.error != null}">
	            <div class="alert alert-danger">
	                <p>Invalid username and password.</p>
	            </div>
	        </c:if>
	        <c:if test="${param.logout != null}">
	            <div class="alert alert-success">
	                <p>You have been logged out successfully.</p>
	            </div>
	        </c:if>
	        <div class="form-group">
	            <label for="username"></label>
	            <input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
	        </div>
	        <div class="form-group">
	            <label for="password"></label> 
	            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
	        </div>
	        <div class="checkbox">
	          <label><input type="checkbox" name="remember-me"> Remember Me</label>  
	        </div>
	        <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
	        <button type="submit" class="btn btn-default" value="log in">Submit</button>
	    </form>
	</div>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p>
</footer>
<script src="static/js/sample.js"></script>		
</body>
</html>