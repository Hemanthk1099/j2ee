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
		<td>Data Mining</td>
		<% out.println("<td>"+request.getParameter("ss")+ "</td>");%>
		</tr>
		<tr>
		<td>Distributed Computing</td>
		<% out.println("<td>"+request.getParameter("ooadp")+ "</td>");%>
		</tr>
		<tr>
		<td>Information Security</td>
		<% out.println("<td>"+request.getParameter("j2ee")+ "</td>");%>
		</tr>
		<tr>
		<td>Elective D</td>
		<% out.println("<td>"+request.getParameter("mini")+ "</td>");%>
		</tr>
		<tr>
		<td>Data Mining Lab</td>
		<% out.println("<td>"+request.getParameter("sslab")+ "</td>");%>
		</tr>
		<tr>
		<td>Elective C</td>
		<% out.println("<td>"+request.getParameter("eb")+ "</td>");%>
		</tr>
		<tr>
		<td>Distributed Computing lab</td>
		<% out.println("<td>"+request.getParameter("ooadplab")+ "</td>");%>
		</tr>
		<tr>
		<td>Elective E</td>
		<% out.println("<td>"+request.getParameter("j2eelab")+ "</td>");%>
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
		<a href='8sem.jsp'>Next Sem</a>
</div>
</body>
</html>