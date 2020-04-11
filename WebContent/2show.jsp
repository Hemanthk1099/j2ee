<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="formStyle.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
		<% out.println("<h1>"+request.getParameter("usn")+ "</h1>");%>
		<table>
		<tr>
		<td>Engineering Mathematics-1</td>
		<% out.println("<td>"+request.getParameter("maths")+ "</td>");%>
		</tr>
		<tr>
		<td>Engineering Physics</td>
		<% out.println("<td>"+request.getParameter("phy")+ "</td>");%>
		</tr>
		<tr>
		<td>Elements of Mechanical Engineering</td>
		<% out.println("<td>"+request.getParameter("mech")+ "</td>");%>
		</tr>
		<tr>
		<td>Basics of Civil Engineering and Mechanics</td>
		<% out.println("<td>"+request.getParameter("civil")+ "</td>");%>
		</tr>
		<tr>
		<td>Basic Electronics</td>
		<% out.println("<td>"+request.getParameter("ec")+ "</td>");%>
		</tr>
		<tr>
		<td>Environmental Studies</td>
		<% out.println("<td>"+request.getParameter("evs")+ "</td>");%>
		</tr>
		<tr>
		<td>Kannada</td>
		<% out.println("<td>"+request.getParameter("kannada")+ "</td>");%>
		</tr>
		<tr>
		<td>Engineering Physics Labarotary</td>
		<% out.println("<td>"+request.getParameter("phyLab")+ "</td>");%>
		</tr>
		<tr>
		<td>WorkShop Practice</td>
		<% out.println("<td>"+request.getParameter("mechLab")+ "</td>");%>
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
		<a href='3sem.jsp'>Next Sem</a>

</div>
</body>
</html>