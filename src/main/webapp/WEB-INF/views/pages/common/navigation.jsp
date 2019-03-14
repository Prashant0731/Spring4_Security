<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
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
			<li><a class="active" href="${pageContext.request.contextPath}/home" class="myButton1" >Home</a></li></br>
			<li><a class="active" href="${pageContext.request.contextPath}/db" class="myButton1">    DBA</a></li> <br>
			<li><a class="active" href="${pageContext.request.contextPath}/admin" class="myButton1"> Admin</a></li> <br>
			<li><a class="active" href="${pageContext.request.contextPath}/parent" class="myButton1">Parent</a></li> <br>	       
			<li><a class="active" href="${pageContext.request.contextPath}/login" class="myButton1"> Login </a></li> <br>
			<li><a class="active" href="${pageContext.request.contextPath}/newuser" class="myButton1">Registration</a></li> <br>
			<li><a class="active" href="${pageContext.request.contextPath}/list" class="myButton1">  Records</a></li> 
	    </ul>
	</nav>
</body>
</html>