<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Admin page</title>
    <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
    
</head>
<body>
    Dear <strong>${loggedinuser}</strong>,<br>
    Welcome to Admin Page.
    
	<sec:authorize access="isFullyAuthenticated()">
	<label><a href="#">Create New User</a> | <a href="#">View existing Users</a></label>
    </sec:authorize>
    
    <a href="<c:url value="/logout"/>" class="myButton2">Logout</a>
	<a href="home" class="myButton1"> Back </a><br>
</body>
</html>