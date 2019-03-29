<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>

    Dear <strong>${loggedinuser}</strong>,<br>
    Welcome to Admin Page.
    
	<sec:authorize access="isFullyAuthenticated()">
	<label><a href="#">Create New User</a> | <a href="#">View existing Users</a></label>
    </sec:authorize>
    
    <a href="<c:url value="/logout"/>" class="myButton2">Logout</a>
	<a href="home" class="myButton1"> Back </a><br>

<%@ include file="templates/footerMillennium.jsp" %>
	