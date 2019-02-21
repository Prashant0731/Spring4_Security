<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login page</title>
        <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
   		<link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
    </head>
<body>

<c:url var="loginUrl" value="/login" />
   <div id="mainWrapper">
       <div class="login-container">
           <div class="login-card">
               <div class="login-form">
                   
                   
                  <a href="home" class="myButton1"> Back </a>
                  <a href="newuser"  class="myButton1"> Registration </a><br> 
                  
                  <h3>Login page</h3> 
                   <form action="${loginUrl}" method="post" class="form-horizontal"> 
             <%--  <form name="${loginUrl}" action="&lt;c:url value='/login?${_csrf.parameterName}=${_csrf.token} }' /&gt;" method="POST"> --%>
                       <c:if test="${param.error != null}">
                           <div class="alert alert-danger">
                               <p>Invalid username and password.</p>
                           </div>
                       </c:if>
                       
                       <c:if test="${param.logout != null}">
                           <div class="alert alert-success">
                               <p>You have been logged out successfully.</p>
                           </div>
                       </c:if>
                       
                       <div class="input-group input-sm">
                           <label class="input-group-addon" for="username">
                           <i class="fa fa-user"></i></label>
                           <input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
                       </div>
                       <div class="input-group input-sm">
                           <label class="input-group-addon" for="password">
                           <i class="fa fa-lock"></i></label> 
                           <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                       </div>
                       <div class="input-group input-sm">
                         <div class="checkbox">
                           <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
                         </div>
                       </div>
                       <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                            
                       <div class="form-actions">
                           <input type="submit"
                               class="btn btn-block btn-primary btn-default" value="Log in">
                       </div>
                   </form>
               </div>
           </div>
       </div>
   </div>
</body>
</html>