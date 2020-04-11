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
		<td>Computer Networks</td>
		<% out.println("<td>"+request.getParameter("maths")+ "</td>");%>
		</tr>
		<tr>
		<td>Operating System</td>
		<% out.println("<td>"+request.getParameter("coa")+ "</td>");%>
		</tr>
		<tr>
		<td>Operational Reasearch</td>
		<% out.println("<td>"+request.getParameter("dms")+ "</td>");%>
		</tr>
		<tr>
		<td>Database Management Systems</td>
		<% out.println("<td>"+request.getParameter("ds")+ "</td>");%>
		</tr>
		<tr>
		<td>Elective (NLP/DIP)</td>
		<% out.println("<td>"+request.getParameter("oops")+ "</td>");%>
		</tr>
		<tr>
		<td>Intellectual Property Rights</td>
		<% out.println("<td>"+request.getParameter("me")+ "</td>");%>
		</tr>
		<tr>
		<td>Scripting Lab</td>
		<% out.println("<td>"+request.getParameter("sllab")+ "</td>");%>
		</tr>
		<tr>
		<td>DBMS Lab</td>
		<% out.println("<td>"+request.getParameter("oopsLab")+ "</td>");%>
		</tr>
		<td>Computer Networks Lab</td>
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
		<a href='6sem.jsp'>Next Sem</a>

</div>
</body>
</html>