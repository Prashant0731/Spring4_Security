<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration Confirmation Page</title>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
</head>
<body>
    <div class="success">
    	<h3>
        Confirmation message : ${success}.
        </h3>
        <br>
        
        <h4>
        Would you like to <a href="<c:url value='/newuser' />" class="myButton3">Add More Users</a>
        </h4>
        <br/>

 		<h4>
        Go to <a href="<c:url value='/admin'/>" class="myButton3">AdminPage</a> OR <a href="<c:url value="/logout"/>" class="myButton2">Logout</a> 
        </h4>
    </div>
     
    <div class="generic-container">
        <%@include file="authheader.jsp" %>
        <div class="alert alert-success lead">
            ${success}
        </div>
    </div> 
</body>
</html>