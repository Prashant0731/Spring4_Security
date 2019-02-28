<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>This is DefaultHeader</title>
	<link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
	</head>
<body>
	<div style="text-align: right;">
	    Dear <strong>${loggedinuser}</strong>,<br> 
	    <a href="<c:url value="/logout"/>" class="myButton2">Logout</a>
	</div>

</body>
</html>