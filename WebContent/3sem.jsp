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
	var math=document.getElementById("maths").value;
	var ds=document.getElementById("ds").value;
	var dms=document.getElementById("dms").value;
	var oops=document.getElementById("oops").value;
	var me=document.getElementById("me").value;
	//var evs=document.getElementById("evs").value;
	var oopsLab=document.getElementById("oopsLab").value;
	var dsLab = document.getElementById("dsLab").value;
	var coa=document.getElementById("coa").value;
	count = 0
	math = 4*getGrade(math)
	if(math == 0) 
		count++;
	ds = 4*getGrade(ds)
	if(ds == 0) 
		count++;
	dms = 4*getGrade(dms)
	if(dms == 0) 
		count++;
	coa = 4*getGrade(coa)
	if(coa == 0) 
		count++; 
	oops = 4*getGrade(oops) 
	if(oops == 0) 
		count++;
	me = 3*getGrade(me)
	if(me == 0) 
		count++;
	oopsLab = 1*getGrade(oopsLab)
	if(oopsLab == 0) 
		count++;
	dsLab = 1*getGrade(dsLab)
	if(dsLab == 0) 
		count++;
    total = math + ds + dms + oopsLab + oops +me + coa+ dsLab;
    console.log(total)
	if(count>=4)
		sgpaFeild.value = "Year Back";
	else	
		sgpaFeild.value = total/25;
}
</script>
<body>
	<h1>Semester 3</h1>
<div>
<form action="Update" method="post">
			<table style="width: 50%">
				<tr>
					<td>Engineering Mathematics-|||</td>
					<td><input type="number" id="maths" name="maths"/></td>
				</tr>
				<tr>
					<td>Computer Organization and Architecture</td>
					<td><input type="number" id="coa" name="coa"/></td>
				</tr>
				<tr>
					<td>Discrete Mathematical Structures</td>
					<td><input type="number" id="dms" name="dms" /></td>
				</tr>
				<tr>
					<td>Data Structures</td>
					<td><input type="number" id="ds" name="ds" /></td>
				</tr>
				<tr>
					<td>Object Oriented Programming using Java</td>
					<td><input type="number" id="oops" name="oops" /></td>
				</tr>
				<tr>
					<td>Management and Entrepreneurship</td>
					<td><input type="number" id="me" name="me" /></td>
				</tr>
				<tr>
					<td>OOPS Lab</td>
					<td><input type="number" id="oopsLab" name="oopsLab" /></td>
				</tr>
				<tr>
					<td>Data Structures Lab</td>
					<td><input type="number" id="dsLab" name="dsLab"/></td>
				</tr>

				
				</table>
				<input type="hidden" id="sgpa1" name="sgpa1">
				 <input type="hidden" name="usn" value=<%=request.getAttribute("usn") %>> 
				 <input type="hidden" name="sem" value="3">
				 <button onclick="sgpa()"> submit </button>
				</form>
				</div>
</body>
</html>
