<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>


    Dear <strong>${loggedinuser}</strong>,<br>
    Welcome to DBA Page.
	<a href="<c:url value="/logout"/>" class="myButton2">Logout</a>
	<a href="home" class="myButton1"> Back </a><br>
	
<%@ include file="templates/footerMillennium.jsp" %>