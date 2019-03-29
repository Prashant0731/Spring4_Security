<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>

<br><br>
<br><br>
<br><br>

<br><br>
<br><br>
<br><br>
	<a href="home" class="myButton1"> Back </a><br>
    <div class="generic-container">
        <%@include file="authheader.jsp" %>   
        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">List of Users </span></div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>SSO ID</th>
                        <th>Edit</th>
                        <th>Delete</th>
                        
                        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
                            <th width="100"></th>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
                            <th width="100"></th>
                        </sec:authorize>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        <td>${user.ssoId}</td>
                  
                        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
                            <td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn myButton1 custom-width">edit</a></td>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
                            <td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn myButton2 custom-width">delete</a></td>
                        </sec:authorize>                  
                  
                        
              <%--         
              				 <td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
                            <td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
                --%>        
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <sec:authorize access="hasRole('ADMIN')">
            <div class="well">
                <a href="<c:url value='/newuser' class="btn btn-success" />">Add New User</a>
            </div>
        </sec:authorize>
    </div>
    

<%@ include file="templates/footerMillennium.jsp" %>
