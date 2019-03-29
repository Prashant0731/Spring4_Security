<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>


	<a href="list" class="myButton1"> Back </a><br>
    <div class="generic-container">
        <div class="well lead" style="text-align: center;"><b>-User Registration Form-</b></div>
        <form:form style="text-align: center;" method="POST" modelAttribute="user" class="form-horizontal">
            <form:input type="hidden" path="id" id="id"/>
             
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="firstName">First Name</label>
                    <div class="col-md-7">
                        <form:input type="text" path="firstName" id="firstName" class="form-control input-sm" required="required"/>
                        <div class="has-error">
                            <form:errors path="firstName" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
     
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="lastName">Last Name</label>
                    <div class="col-md-7">
                        <form:input type="text" path="lastName" id="lastName" class="form-control input-sm" required="required"/>
                        <div class="has-error">
                            <form:errors path="lastName" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
     
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="ssoId">SSO ID</label>
                    <div class="col-md-7">
                        <c:choose>
                            <c:when test="${edit}">
                                <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" required="required" disabled="true" />
                            </c:when>
                            <c:otherwise>
                                <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" required="required"/>
                                <div class="has-error">
                                    <form:errors path="ssoId" class="help-inline"/>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
     
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="password">Password</label>
                    <div class="col-md-7">
                        <form:input type="password" path="password" id="password" class="form-control input-sm" required="required"/>
                        <div class="has-error">
                            <form:errors path="password" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
     
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="email">Email</label>
                    <div class="col-md-7">
                        <form:input type="text" path="email" id="email" class="form-control input-sm" required="required"/>
                        <div class="has-error">
                            <form:errors path="email" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
     
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="userProfiles">Roles</label>
                    <div class="col-md-7">
                        <form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" required="required"/>
                        <div class="has-error">
                            <form:errors path="userProfiles" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
     
            <div class="row">
                <div class="form-actions floatRight">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register" class="myButton1"/> or <%-- <a href="<c:url value='/list' href="list" />">Cancel</a> --%>
                            <a href="list" class="myButton2"> Cancel </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            
	       <c:if test="${edit}">
	            <span class="well pull-left">
	                <a href="<c:url value='/add-document-${user.id}' />">Click here to upload/manage your documents</a>   
	            </span>
	        </c:if>
        
        </form:form>
    </div>
    
<%@ include file="templates/footerMillennium.jsp" %>
