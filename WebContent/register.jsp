<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="formStyle.css">
</head>
<body>
<div>
<form action="Register" method="post">
			<table style="with: 50%">
				<tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" /></td>
				</tr>
					<td>USN</td>
					<td><input type="text" name="usn" /></td>
				</tr>
				<tr>
					<td>Date of birth(YYYY-MM-DD)</td>
					<td><input type="text" name="dob" /></td>
				</tr>
				<tr>
					<td>branch</td>
					<td><input type="text" name="branch" /></td>
				</tr>
				</table>
			<input type="submit" value="register" /></form></div>
</body>
</html>