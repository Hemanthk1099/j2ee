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
	var sllab=document.getElementById("sllab").value;
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
	coa = 3*getGrade(coa)
	if(coa == 0) 
		count++; 
	oops = 4*getGrade(oops) 
	if(oops == 0) 
		count++;
	me = 2*getGrade(me)
	if(me == 0) 
        count++;
    sllab = 2*getGrade(sllab)
	if(sllab == 0) 
		count++;
	oopsLab = 1*getGrade(oopsLab)
	if(oopsLab == 0) 
		count++;
	dsLab = 1*getGrade(dsLab)
	if(dsLab == 0) 
		count++;
    total = math + ds + dms + oopsLab + oops +me + coa+ dsLab+sllab;
    console.log(total)
	if(count>=4)
		sgpaFeild.value = "Year Back";
	else	
		sgpaFeild.value = total/25;
}
</script>
<body>
<div>
<form action="Update" method="post">
			<table style="width: 50%">
				<tr>
					<td>Computer Networks</td>
					<td><input type="number" id="maths" name="maths"/></td>
				</tr>
				<tr>
					<td>Operating System</td>
					<td><input type="number" id="coa" name="coa"/></td>
				</tr>
				<tr>
					<td>Operational Reasearch</td>
					<td><input type="number" id="dms" name="dms"/></td>
				</tr>
				<tr>
					<td>Database Management Systems</td>
					<td><input type="number" id="ds" name="ds"/></td>
				</tr>
				<tr>
					<td>Elective (NLP/DIP)</td>
					<td><input type="number" id="oops" name="oops"/></td>
				</tr>
				<tr>
					<td>Intellectual Property Rights</td>
					<td><input type="number" id="me" name="me"/></td>
                </tr>
                <tr>
					<td>Scripting Lab</td>
					<td><input type="number" id="sllab" name="sllab"/></td>
				</tr>
				<tr>
					<td>DBMS Lab</td>
					<td><input type="number" id="oopsLab" name="oopsLab"/></td>
				</tr>
				<tr>
					<td>Computer Networks Lab</td>
					<td><input type="number" id="dsLab" name="dsLab"/></td>
				</tr>

				
				</table>
				<input type="hidden" id="sgpa1" name="sgpa1">
				 <input type="hidden" name="usn" value=<%=request.getAttribute("usn") %>> 
				 <input type="hidden" name="sem" value="5">
				 <button onclick="sgpa()"> submit </button>
				</form></div>
			
</body>
</html>