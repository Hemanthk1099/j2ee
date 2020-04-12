<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="formStyle.css">
<title>Login Form</title>
	<script>
	function validate()
	{
		usn = document.getElementById("usn").value;
		var regex = /^[0-9][a-zA-Z][a-zA-Z][0-9][0-9][a-zA-Z][a-zA-Z][0-9][0-9][0-9]/i;
  if(usn == "")
		{
			alert("please enter the usn");
		}
  if (!regex.test(usn)) {
		alert("wrong usn format");
		return false;
  }
  return true;
	}
	</script>
</head>
<body>
<h1>Login Form</h1>
<div>
<form action="login" onsubmit="return validate()" method="post">
			<table style="with: 50%">
				<tr>
					<td>USN</td>
					<td><input type="text" name="usn" id= "usn"/></td>
				</tr>
				<tr>
					<td>Date of birth</td>
					<td><input type="text" name="dob" /></td>
				</tr>
				</table>
			<input type="submit" value="Login" /></form></div>
</body>
</html>
