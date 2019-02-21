<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
 
<!DOCTYPE html>
<html>

<head>
 <meta charset="ISO-8859-1">
 <title> DefaultMenu Page </title>
 <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
 <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css" />
 <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
 <link href="<c:url value='/static/img' />"            rel="stylesheet"></link>
 <link href="<c:url value='/static/img/freepik.jpg'/>" rel="stylesheet"></link>
</head>

<body>

	<nav>
	    <a href="${pageContext.request.contextPath}/">
	    <img src="${pageContext.request.contextPath}/static/img/t.gif" class="logo" alt="Paris" width="160" height="200" ></a>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	   
	    <ul id="menu">
	       <li><a class="active" href="${pageContext.request.contextPath}/">Home</a></li>
	       <li><a class="active" href="${pageContext.request.contextPath}/admin">DBA</a></li>
	       <li><a class="active" href="${pageContext.request.contextPath}/db">Parent</a></li>
	       <li><a class="active" href="${pageContext.request.contextPath}/login">Login </a></li>
	       <li><a class="active" href="${pageContext.request.contextPath}/newuser">Registration</a></li>
	       <li><a class="active" href="${pageContext.request.contextPath}/list">Records</a></li>
	    </ul>
	</nav>
</body>
</html>