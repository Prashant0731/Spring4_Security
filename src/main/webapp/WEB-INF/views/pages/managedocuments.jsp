<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Upload/Download/Delete Documents</title>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
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
        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead" > <h3 align="center"/>List of Documents</h3></span></div>
            <div class="tablecontainer">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>File Name</th>
                            <th>Type</th>
                            <th>Description</th>
                            <th width="100"></th>
                            <th width="100"></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${documents}" var="doc" varStatus="counter">
                        <tr>
                            <td>${counter.index + 1}</td>
                            <td>${doc.name}</td>
                            <td>${doc.type}</td>
                            <td>${doc.description}</td>
                            <td><a href="<c:url value='/download-document-${user.id}-${doc.id}' />" class="btn btn-success custom-width">download</a></td>
                            <td><a href="<c:url value='/delete-document-${user.id}-${doc.id}' />" class="btn btn-danger custom-width">delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="panel panel-default">
             
            <div class="panel-heading"><span class="lead"> <h4 align="center">Upload New Document</h4></span></div>
            <div class="uploadcontainer">
                <form:form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data" class="form-horizontal">
             
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3 control-lable" for="file">Upload a document</label>
                            <div class="col-md-7">
                                <form:input type="file" path="file" id="file" class="form-control input-sm"/>
                                <div class="has-error">
                                    <form:errors path="file" class="help-inline"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3 control-lable" for="description">Description</label>
                            <div class="col-md-7">
                                <form:input type="text" path="description" id="description" class="form-control input-sm"/>
                            </div>
                             
                        </div>
                    </div>
             
                    <div class="row">
                        <div class="form-actions floatRight">
                            <input type="submit" value="Upload" class="btn btn-primary btn-sm">
                        </div>
                    </div>
     
                </form:form>
                </div>
        </div>
        <div class="well">
            Go to <a href="<c:url value='/list' />">Users List</a>
        </div>
    </div>
</body>
</html>