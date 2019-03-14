<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
	<title>Login page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
</head>
<body>
	<div class="container">
	<c:url var="loginUrl" value="/login" />
    <a href="home" class="myButton1"> Back </a>
    <a href="newuser"  class="myButton1"> Registration </a><br> 
	    <h3>Login page</h3> 
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
</body>
</html>