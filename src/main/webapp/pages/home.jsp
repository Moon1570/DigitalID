<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<title>Digital ID</title>
</head>
<body class="container">

Let's start,<br><br>

<a href="./card/add">Add new </a>

<table class="table">
	<tr>
		<td>ID</td>
		<td>Name</td>
		<td>Address</td>
		<td>Phone</td>
		<td>Email</td>
		<td>Company</td>
		<td>Action</td>
	</tr>
	<c:forEach items="${list}" var="item">
    
	<tr>
		<td>${item.id }</td>
		<td>${item.name }</td>
		<td>${item.address }</td>
		<td>${item.phone }</td>
		<td>${item.email }</td>
		<td>${item.company }</td>
		<td><a href="./viewcard?id=${item.id }">Card</a> | Edit | Delete</td>
	</tr>
	</c:forEach>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

</body>
</html>