<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="formStyle.css">
</head>
<script type="text/javascript" src="sgpa.js"></script>
<script>
function sgpa() {
	var sgpaFeild =  document.getElementById("sgpa1");
	var oe=document.getElementById("oe").value;
	var i=document.getElementById("i").value;
	var sp=document.getElementById("sp").value;
	var ec=document.getElementById("ec").value;
	//var coa=document.getElementById("coa").value;
	count = 0
	oe = 4*getGrade(oe)
	if(oe == 0) 
		count++;
	i = 4*getGrade(i)
	if(i == 0) 
		count++;
	sp = 16*getGrade(sp)
	if(sp == 0) 
		count++;
	// coa = 3*getGrade(coa)
	// if(coa == 0) 
	// 	count++; 
	ec = 2*getGrade(ec) 
	if(ec == 0) 
		count++;
	total = ec+sp+i+oe;
    console.log(total)
	if(count>=4)
		sgpaFeild.value = "Year Back";
	else	
		sgpaFeild.value = total/26;
}
</script>
<body>
<div>
<form action="Update" method="post">
			<table style="width: 50%">
				<tr>
					<td>Open Elective</td>
					<td><input type="number" id="oe" name="oe"/></td>
				</tr>
				<tr>
					<td>Internship</td>
					<td><input type="number" id="i" name="i"/></td>
				</tr>
				<tr>
					<td>Senior Project</td>
					<td><input type="number" id="sp" name="sp"/></td>
				</tr>
				<tr>
					<td>Extra/Co-Curricular Activities</td>
					<td><input type="number" id="ec" name="ec"/></td>
				</tr>
				</table>
				<input type="hidden" id="sgpa1" name="sgpa1">
				 <input type="hidden" name="usn" value=<%=request.getAttribute("usn") %>> 
				 <input type="hidden" name="sem" value="8">
				 <button onclick="sgpa()"> submit </button>
				</form>
			</div>	
</body>
</html>