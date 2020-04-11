<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="formStyle.css">
<meta charset="ISO-8859-1">
</head>
<body>
<div>
		<% out.println("<h1>"+request.getParameter("usn")+ "</h1>");%>
		<table>
		<tr>
		<td>Engineering Mathematics-3</td>
		<% out.println("<td>"+request.getParameter("maths")+ "</td>");%>
		</tr>
		<tr>
		<td>Computer Organization and Architecture</td>
		<% out.println("<td>"+request.getParameter("coa")+ "</td>");%>
		</tr>
		<tr>
		<td>Discrete Mathematical Structures</td>
		<% out.println("<td>"+request.getParameter("dms")+ "</td>");%>
		</tr>
		<tr>
		<td>Data Structures</td>
		<% out.println("<td>"+request.getParameter("ds")+ "</td>");%>
		</tr>
		<tr>
		<td>Object Oriented Programming using Java</td>
		<% out.println("<td>"+request.getParameter("oops")+ "</td>");%>
		</tr>
		<tr>
		<td>Management and Entrepreneurship</td>
		<% out.println("<td>"+request.getParameter("me")+ "</td>");%>
		</tr>
		<tr>
		<td>OOPS Lab</td>
		<% out.println("<td>"+request.getParameter("oopsLab")+ "</td>");%>
		</tr>
		<tr>
		<td>Data Structures Lab</td>
		<% out.println("<td>"+request.getParameter("dsLab")+ "</td>");%>
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
		<a href='4sem.jsp'>Next Sem</a>

</div>
</body>
</html>