<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <title>AccessDenied page</title>
	    <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
	</head>
<body >
<a href="home" class="myButton1"> Back </a><br>
<div class="generic-container">
	<div class="authbar">
	<h2>
		Dear <strong>${loggedinuser}</strong>,<br>
		You are not authorized to access this page. 	
	</h2>
		<a href="<c:url value="/logout"/>" class="myButton2">Logout</a>
		<a href="home" class="myButton1"> Back </a><br>

	</div>
</div>

</body>
</html>