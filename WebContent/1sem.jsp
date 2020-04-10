<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="formStyle.css">
</head>
<script>
    function getGrade(marks)
    {
        if(marks>=90)
            return  "10";
        else if(marks<90 && marks>=80)
            return "9";
        else if(marks<80 && marks>=70)
            return "8";
        else if(marks<70 && marks>=60)
            return "7";
        else if(marks<60 && marks>=50)
            return "6";
        else if(marks<50 && marks>=40)
			return "5";
		else 
			return 0;
    }
function sgpa() {
	var sgpaFeild =  document.getElementById("sgpa1");
	
	var math=document.getElementById("maths").value;
	var phy=document.getElementById("phy").value;
	var mech=document.getElementById("mech").value;
	var civil=document.getElementById("civil").value;
	var ec=document.getElementById("ec").value;
	var evs=document.getElementById("evs").value;
	var kannada=document.getElementById("kannada").value;
	var phyLab=document.getElementById("phyLab").value;
	var mechLab=document.getElementById("mechLab").value;
	count = 0
	math = 4*getGrade(math)
	if(math == 0) 
		count++;
	phy = 4*getGrade(phy)
	if(phy == 0) 
		count++;
	mech = 4*getGrade(mech)
	if(mech == 0) 
		count++;
	civil = 4*getGrade(civil)
	if(mech == 0) 
		count++; 
	ec = 4*getGrade(ec) 
	if(ec == 0) 
		count++;
	evs = 2*getGrade(evs)
	if(evs == 0) 
		count++;
	phyLab = 1*getGrade(phyLab)
	if(phyLab == 0) 
		count++;
	mechLab = 1*getGrade(mechLab)
	if(mechLab == 0) 
		count++;
	kannada = 1*getGrade(kannada);
	if(kannada == 0) 
		count++;
	total = math + phy + phyLab + mechLab + kannada + evs+ec + civil+ mech;
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
					<td>Engineering Mathematics-1</td>
					<td><input type="number" id="maths" name="maths"/></td>
				</tr>
				<tr>
					<td>Engineering Physics</td>
					<td><input type="number" id="phy" name="phy" /></td>
				</tr>
				<tr>
					<td>Elements of Mechanical Engineering</td>
					<td><input type="number" id="mech" name="mech"/></td>
				</tr>
				<tr>
					<td>Basics of Civil Engineering and Mechanics</td>
					<td><input type="number" id="civil" name="civil"/></td>
				</tr>
				<tr>
					<td>Basic Electronics</td>
					<td><input type="number" id="ec" name="ec"/></td>
				</tr>
				<tr>
					<td>Environmental Studies</td>
					<td><input type="number" id="evs" name="evs"/></td>
				</tr>
				<tr>
					<td>Kannada</td>
					<td><input type="number" id="kannada" name="kannada"/></td>
				</tr>
				<tr>
					<td>Engineering Physics Labarotary</td>
					<td><input type="number" id="phyLab" name="phyLab"/></td>
				</tr>
				<tr>
					<td>WorkShop Practice</td>
					<td><input type="number" id="mechLab" name="mechLab"/></td>
				</tr>

				
				</table>
				 <input type="hidden" id="sgpa1" name="sgpa1">
				 <input type="hidden" name="usn" value=<%=request.getAttribute("usn") %>> 
				 <input type="hidden" name="sem" value="1">
			<button onclick="sgpa()"> submit </button>
			</form></div>
</body>
</html>