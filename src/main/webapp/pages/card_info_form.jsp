<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="utf-8">
<title>Form</title>
</head>
<body class="container">

	<div>
		<form action="./new" method="post">
			<table>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
					<td></td>
				</tr>
				<tr>
					<td> Address</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td> Phone</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td> Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td> Company</td>
					<td><input type="text" name="company"></td>
				</tr>
			</table>
			<button type="submit">Submit</button>
		</form>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

</body>
</html>