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
<table>
		<% out.println("<h1>"+request.getParameter("usn")+ "</h1>");%>
		<tr>
		<td>System Software</td>
		<% out.println("<td>"+request.getParameter("ss")+ "</td>");%>
		</tr>
		<tr>
		<td>Object Oriented Analysis ans Design Patterns using java</td>
		<% out.println("<td>"+request.getParameter("ooadp")+ "</td>");%>
		</tr>
		<tr>
		<td>Java and J2EE</td>
		<% out.println("<td>"+request.getParameter("j2ee")+ "</td>");%>
		</tr>
		<tr>
		<td>Mini Project</td>
		<% out.println("<td>"+request.getParameter("mini")+ "</td>");%>
		</tr>
		<tr>
		<td>System Software Lab</td>
		<% out.println("<td>"+request.getParameter("ssLab")+ "</td>");%>
		</tr>
		<tr>
		<td>Elective B</td>
		<% out.println("<td>"+request.getParameter("eb")+ "</td>");%>
		</tr>
		<tr>
		<td>OOADP lab</td>
		<% out.println("<td>"+request.getParameter("ooadplab")+ "</td>");%>
		</tr>
		<tr>
		<td>Java and J2EE lab</td>
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
		<a href='7sem.jsp'>Next Sem</a>
</div>
</body>
</html>