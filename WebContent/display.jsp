<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>Semester Details</title> -->
<!-- </head> -->
<!-- <body> -->
<%-- <% --%>
// 	final Object sem=request.getAttribute("sem");
// 	if(sem.equals("1") || sem.equals("2"))
// 	{	
// 		out.println("<table>");
// 		out.println("<tr>");
// 		out.println("<td>Engineering Mathematics-1</td>");
// 		out.println("<td>"+request.getParameter("maths")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Engineering Physics</td>");
// 		out.println("<td>"+request.getParameter("phy")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Elements of Mechanical Engineering</td>");
// 		out.println("<td>"+request.getParameter("mech")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Basics of Civil Engineering and Mechanics</td>");
// 		out.println("<td>"+request.getParameter("civil")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Basic Electronics</td>");
// 		out.println("<td>"+request.getParameter("ec")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Environmental Studies</td>");
// 		out.println("<td>"+request.getParameter("evs")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Kannada</td>");
// 		out.println("<td>"+request.getParameter("kannada")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Engineering Physics Labarotary</td>");
// 		out.println("<td>"+request.getParameter("phyLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>WorkShop Practice</td>");
// 		out.println("<td>"+request.getParameter("mechLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");
// 	}
// 	else if(sem.equals("3")) {
// 		out.println("<table>");
// 		out.println("<tr>");
// 		out.println("<td>Engineering Mathematics-2</td>");
// 		out.println("<td>"+request.getParameter("maths")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Computer Organization and Architecture</td>");
// 		out.println("<td>"+request.getParameter("coa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Discrete Mathematical Structures</td>");
// 		out.println("<td>"+request.getParameter("dms")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Data Structures</td>");
// 		out.println("<td>"+request.getParameter("ds")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Object Oriented Programming using Java</td>");
// 		out.println("<td>"+request.getParameter("oops")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Management and Entrepreneurship</td>");
// 		out.println("<td>"+request.getParameter("me")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>OOPS Lab</td>");
// 		out.println("<td>"+request.getParameter("oopsLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Data Structures Lab</td>");
// 		out.println("<td>"+request.getParameter("dsLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");
		
// 	}
// 	else if(sem.equals("4")) {
// 		out.println("<table>");
// 		out.println("<tr>");
// 		out.println("<td>Engineering Mathematics-4</td>");
// 		out.println("<td>"+request.getParameter("maths")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Data Communications</td>");
// 		out.println("<td>"+request.getParameter("coa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>MicroProcessors</td>");
// 		out.println("<td>"+request.getParameter("dms")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Finite Automata and Formal Languages</td>");
// 		out.println("<td>"+request.getParameter("ds")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Design and Analysis of Algorithms</td>");
// 		out.println("<td>"+request.getParameter("oops")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Software Engineering</td>");
// 		out.println("<td>"+request.getParameter("me")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>DAA Lab</td>");
// 		out.println("<td>"+request.getParameter("oopsLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>MP Lab</td>");
// 		out.println("<td>"+request.getParameter("dsLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");
		
		
// 	}
// 	else if(sem.equals("5")) {
// 		out.println("<table>");
// 		out.println("<tr>");
// 		out.println("<td>Computer Networks</td>");
// 		out.println("<td>"+request.getParameter("maths")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Operating System</td>");
// 		out.println("<td>"+request.getParameter("coa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Operational Reasearch</td>");
// 		out.println("<td>"+request.getParameter("dms")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Database Management Systems</td>");
// 		out.println("<td>"+request.getParameter("ds")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Elective (NLP/DIP)</td>");
// 		out.println("<td>"+request.getParameter("oops")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Intellectual Property Rights</td>");
// 		out.println("<td>"+request.getParameter("me")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Scripting Lab</td>");
// 		out.println("<td>"+request.getParameter("sllab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>DBMS Lab</td>");
// 		out.println("<td>"+request.getParameter("oopsLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<td>Computer Networks Lab</td>");
// 		out.println("<td>"+request.getParameter("dsLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");

// 	}
// 	else if(sem.equals("6")) {
// 		out.println("<table>");
// 		out.println("<tr>");
// 		out.println("<td>System Software</td>");
// 		out.println("<td>"+request.getParameter("ss")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Object Oriented Analysis ans Design Patterns using java</td>");
// 		out.println("<td>"+request.getParameter("ooadp")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Java and J2EE</td>");
// 		out.println("<td>"+request.getParameter("j2ee")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Mini Project</td>");
// 		out.println("<td>"+request.getParameter("mini")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>System Software Lab</td>");
// 		out.println("<td>"+request.getParameter("ssLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Elective B</td>");
// 		out.println("<td>"+request.getParameter("eb")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>OOADP lab</td>");
// 		out.println("<td>"+request.getParameter("ooadplab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Java and J2EE lab</td>");
// 		out.println("<td>"+request.getParameter("j2eelab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");
// 	}
// 	else if(sem.equals("7")) {
// 		out.println("<table>");
// 		out.println("<tr>");
// 		out.println("<td>Data Mining</td>");
// 		out.println("<td>"+request.getParameter("ss")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Distributed Computing</td>");
// 		out.println("<td>"+request.getParameter("ooadp")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Information Security</td>");
// 		out.println("<td>"+request.getParameter("j2ee")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Elective D</td>");
// 		out.println("<td>"+request.getParameter("mini")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Data Mining Lab</td>");
// 		out.println("<td>"+request.getParameter("ssLab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Elective C</td>");
// 		out.println("<td>"+request.getParameter("eb")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Distributed Computing lab</td>");
// 		out.println("<td>"+request.getParameter("ooadplab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Elective E</td>");
// 		out.println("<td>"+request.getParameter("j2eelab")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");
// 	}
// 	else if(sem.equals("8")) {
// 		out.println("<table>");
// 		out.println("<tr>");
// 		out.println("<td>Open Elective</td>");
// 		out.println("<td>"+request.getParameter("oe")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Internship</td>");
// 		out.println("<td>"+request.getParameter("i")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Senior Project</td>");
// 		out.println("<td>"+request.getParameter("sp")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>Extra/Co-Curricular Activities</td>");
// 		out.println("<td>"+request.getParameter("ec")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");
		
// 	}
// 	else{
// 		out.println("GRADUATED!!!!");
// 		out.println("<tr>");
// 		out.println("<td>SGPA</td>");
// 		out.println("<td>"+request.getParameter("sgpa1")+ "</td>");
// 		out.println("</tr>");
// 		out.println("<tr>");
// 		out.println("<td>CGPA</td>");
// 		out.println("<td>"+request.getAttribute("cgpa")+ "</td>");
// 		out.println("</tr>");
// 		out.println("</table>");
// 		out.println("\"<a href='login.jsp'>LOGOUT</a>\"");

// 	}
<%-- %> --%>

<!-- </body> -->
<!-- </html> -->