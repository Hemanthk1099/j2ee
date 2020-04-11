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
		<% out.println("<h1>"+request.getParameter("usn")+ "</h1>");%>
		<table>
		<tr>
		<td>Open Elective</td>
		<% out.println("<td>"+request.getParameter("oe")+ "</td>");%>
		</tr>
		<tr>
		<td>Internship</td>
		<% out.println("<td>"+request.getParameter("i")+ "</td>");%>
		</tr>
		<tr>
		<td>Senior Project</td>
		<% out.println("<td>"+request.getParameter("sp")+ "</td>");%>
		</tr>
		<tr>
		<td>Extra/Co-Curricular Activities</td>
		<% out.println("<td>"+request.getParameter("ec")+ "</td>");%>
		</tr>
		<tr>
		<td>SGPA</td>
		<% out.println("<td>"+request.getParameter("sgpa1")+ "</td>");%>
		</tr>
		<tr>
		<td>CGPA</td>
		<% out.println("<td>"+request.getAttribute("cgpa")+ "</td>");%>
		</tr>
		</table>
		<a href='login.jsp'>LOGOUT</a>
</div>
</body>
</html>