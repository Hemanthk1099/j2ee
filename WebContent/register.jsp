<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="formStyle.css">
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
<div>
<form action="Register" onsubmit="return validate()" method="post">
			<table style="with: 50%">
				<tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" /></td>
				</tr>
					<td>USN</td>
					<td><input type="text" name="usn" id = "usn"/></td>
				</tr>
				<tr>
					<td>Date of birth</td>
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
