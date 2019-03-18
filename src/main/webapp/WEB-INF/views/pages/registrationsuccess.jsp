<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration Confirmation Page</title>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link href="static/css/company.css" rel="stylesheet">        
</head>
<body>
    <div class="generic-container">
        <%@include file="authheader.jsp" %>
         
        <div class="alert alert-success lead">
            ${success}
        </div>
        
      	<span class="well pull-left">
            <a href="<c:url value='/add-document-${user.id}' />">Click here to upload/manage your documents</a>   
        </span>  
         
        <span class="well floatRight">
            Go to <a href="<c:url value='/list' />">Users List</a>
        </span>
    </div>
</body>
</html>