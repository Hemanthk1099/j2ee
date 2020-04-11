<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
		<% out.println("<h1>"+request.getParameter("usn")+ "</h1>");%>
		<h1>GRADUATED!!!!</h1>
<!-- 		<table> -->
<!-- 		<tr> -->
<!-- 		<td>SGPA</td> -->
<%-- 		<% out.println("<td>"+request.getParameter("sgpa1")+ "</td>");%> --%>
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 		<td>CGPA</td> -->
<%-- 		<% out.println("<td>"+request.getAttribute("cgpa")+ "</td>");%> --%>
<!-- 		</tr> -->
<!-- 		</table> -->
		<a href='login.jsp'>LOGOUT</a>
</div>
</body>
</html>