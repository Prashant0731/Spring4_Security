<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <title>Welcome page</title>
	    <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
	</head>
<body>
	
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
    