<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
</head>
<body>
	<div class="authbar" class="well lead">
	   	<span>
	   		Dear <strong>${loggedinuser}</strong>,<br>
	   		Welcome to Yash Technologies.
	   	</span> 
	   	
	   	<span class="floatRight">
	   		<a href="<c:url value="/logout" />">Logout</a>
	   	</span>
	</div>
</body>
</html>