<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com -->
  <title>Bootstrap Theme Company Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="static/css/company.css" rel="stylesheet">
  <link rel="stylesheet" href="D:/WORKSPACE/Spring4_Security/Pics">
  <link href="<c:url value='/static/css/w3school.css' />" rel="stylesheet"></link>
</head>

<body>
<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>

	<div class="container">
		<table class="table table-striped">
			<caption>Your todos are</caption>
			<thead>
				<tr>
					<th>Description</th>
					<th>Target_Date</th>
					<th>it_Done?</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td> <fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/> </td>
						<td>${todo.done}</td>
						<td><a type="button" class="myButton1" href="update-todo?id=${todo.id}">Update</a></td>
						<td><a type="button" class="myButton2" href="delete-todo?id=${todo.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<input type="button" class="myButton1" onclick="location.href='add-todo';" value="ADD TODO" />
		</div>
	</div>
	
<%@ include file="common/footer.jsp" %>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Bootstrap Theme Made By <a href="home#about" title="Visit Millennium">PPOA Developer's</a></p>
</footer>

<script src="static/js/sample.js"></script>	
 </body>
</html>
