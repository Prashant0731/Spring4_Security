<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home">HOME</a></li>
        <li><a href="#services">SERVICES</a></li>
        <li><a href="#portfolio">PORTFOLIO</a></li>
        <li><a href="#pricing">PRICING</a></li>
        <li><a href="#about">ABOUT</a></li>
        <li><a href="contactUs">CONTACT</a></li>
        <li><a href="login">LOGIN</a></li>
      	<li><a href="list-todos">TODO</a></li>
      </ul>
    </div>
  </div>
</nav>

	<div class="container">
	<c:url var="loginUrl" value="/login" />
	<br><br>
	
	<h3 align="center"><b>Login page</b></h3> 
    <a href="home" class="btn btn-default"> Back </a>
    <a href="newuser"  class="btn btn-default"> Registration </a><br><br> 
	    
	    <form action="${loginUrl}" method="post" class="form-horizontal"> 
	      
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
	        
	        <div class="form-group">
	            <label for="username"></label>
	            <input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
	        </div>
	        <div class="form-group">
	            <label for="password"></label> 
	            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
	        </div>
	        <div class="checkbox">
	          <label><input type="checkbox" name="remember-me"> Remember Me</label>  
	        </div>
	        
	        <div class="g-recaptcha"
            data-sitekey="6LcuS5gUAAAAAHT5jn-701Eaphzp7AfTngIjGecz">
            </div>
	        <br>
	        <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
	        <button type="submit" class="btn btn-default" value="log in">Login</button>
	    </form>
	</div>

<%@ include file="templates/footerMillennium.jsp" %>
