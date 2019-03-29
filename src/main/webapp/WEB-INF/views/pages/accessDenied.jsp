<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>

<a href="home" class="myButton1"> Back </a><br>
<div class="generic-container">
	<div class="authbar">
	<h2>
		Dear <strong>${loggedinuser}</strong>,<br>
		You are not authorized to access this page. 	
	</h2>
		<a href="<c:url value="/logout"/>" class="myButton2">Logout</a>
		<a href="home" class="myButton1"> Back </a><br>

	</div>
</div>

<%@ include file="templates/footerMillennium.jsp" %>
