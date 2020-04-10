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
	var ss=document.getElementById("ss").value;
	var j2ee=document.getElementById("j2ee").value;
	var mini=document.getElementById("mini").value;
	var sslab=document.getElementById("sslab").value;
	var ooadplab=document.getElementById("ooadplab").value;
	var j2eelab=document.getElementById("j2eelab").value;
	var eb=document.getElementById("eb").value;
    var  ooadp= document.getElementById("ooadp").value;
	//var coa=document.getElementById("coa").value;
	count = 0
	ss = 4*getGrade(ss)
	if(ss == 0) 
		count++;
	j2ee = 4*getGrade(j2ee)
	if(j2ee == 0) 
		count++;
	mini = 4*getGrade(mini)
	if(mini == 0) 
		count++;
	// coa = 3*getGrade(coa)
	// if(coa == 0) 
	// 	count++; 
	sslab = 1*getGrade(sslab) 
	if(sslab == 0) 
		count++;
	ooadplab = 1*getGrade(ooadplab)
	if(ooadplab == 0) 
        count++;
    j2eelab = 4*getGrade(j2eelab)
	if(j2eelab == 0) 
		count++;
	eb = 4*getGrade(eb)
	if(eb == 0) 
		count++;
	ooadp = 4*getGrade(ooadp)
	if(ooadp == 0) 
		count++;
    total = ss + j2ee + mini + ooadplab + ooadp +eb +sslab+j2eelab;
    console.log(total)
	if(count>=4)
		sgpaFeild.value = "Year Back";
	else	
		sgpaFeild.value = total/26;
}
</script>
<body>
<div>
<form action="Update" method="post" >
			<table style="width: 50%">
				<tr>
					<td>Data Mining</td>
					<td><input type="number" id="ss" name="ss"/></td>
				</tr>
				<tr>
					<td>Distributed Computing</td>
					<td><input type="number" id="ooadp" name="ooadp"/></td>
				</tr>
				<tr>
					<td>Information Security</td>
					<td><input type="number" id="j2ee" name="j2ee"/></td>
				</tr>
				<tr>
					<td>Elective D</td>
					<td><input type="number" id="mini" name="mini"/></td>
				</tr>
				<tr>
					<td>Data Mining Lab</td>
					<td><input type="number" id="sslab" name="sslab"/></td>
				</tr>
				<tr>
					<td>Elective C</td>
					<td><input type="number" id="eb" name="eb"/></td>
                </tr>
                <tr>
					<td>Distributed Computing lab</td>
					<td><input type="number" id="ooadplab" name="ooadplab"/></td>
				</tr>
				<tr>
					<td>Elective E</td>
					<td><input type="number" id="j2eelab" name="j2eelab"/></td>
				</tr>

				
				</table>
				<input type="hidden" id="sgpa1" name="sgpa1">
				 <input type="hidden" name="usn" value=<%=request.getAttribute("usn") %>> 
				 <input type="hidden" name="sem" value="7">
				 <button onclick="sgpa()"> submit </button>
				</form></div>
				
</body>
</html>