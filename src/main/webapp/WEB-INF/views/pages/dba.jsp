<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>DBA page</title>
    <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
</head>
<body>
    Dear <strong>${loggedinuser}</strong>,<br>
    Welcome to DBA Page.
	<a href="<c:url value="/logout"/>" class="myButton2">Logout</a>
	<a href="home" class="myButton1"> Back </a><br>
</body>
</html>