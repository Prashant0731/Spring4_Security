<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <title>Welcome page</title>
	    <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
	</head>
<body>
	<!--HEADER  -->
	<div class="navbar">
		<a class="active" href="home"><i class="fa fa-fw fa-search"></i> Home</a> 
		<a class="active" href="admin"><i class="fa fa-fw fa-envelope"></i> Admin</a> 
		<a class="active" href="db"><i class="fa fa-fw fa-user"></i> DBA</a>
		<a class="active" href="parent"><i class="fa fa-fw fa-user"></i> Parent</a>
		<a class="active" href="login"><i class="fa fa-fw fa-home"></i> Login</a> 
		<a class="active" href="newuser"><i class="fa fa-fw fa-user"></i> Registration</a>
		<a class="active" href="list"><i class="fa fa-fw fa-user"></i>Records</a>
	</div>
	<br><br>
	
    E-mail : ${greeting} this is a welcome page.<br>
    <br>
    Dear <strong>${loggedinuser}</strong>,<br>
    Welcome to Home Page.
    <a href="<c:url value="/logout" />">Logout</a>
    <br>
    
    <div>
      <h4>  
      	<label>View all information This part is visible to Everyone</label>	
      </h4>
    </div>
    
    <br/>
    <div>
        <sec:authorize access="hasRole('ADMIN')">
	        <h4>
		    	<label><a href="http://www.websystique.com/">Edit this page</a> | This part is visible only to "ADMIN" </label>
	        </h4>    
        </sec:authorize>
    </div>
    
	<br/>
	<div>
        <sec:authorize access="hasRole('ADMIN') and hasRole('DBA')">
        	<h4>
    	    	<label><a href="#">Start backup</a> | This part is visible only to one who is both "ADMIN" and "DBA" </label>
            </h4>
        </sec:authorize>
    </div>    
    
    <br/>
    <div>
    	
    	<sec:authorize access="hasRole('PARENT')">
    		<h4>
    			<label><a href="#">Parent</a> | This part is visible only to "Parent"  </label>
    		</h4>
    	</sec:authorize>
    </div>
    
</body>
</html>
    