<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  
<style>
   table, th, td {
    border: 1px solid black;
} 
</style>

-->
<link rel="stylesheet" type="text/css" href="style1.css">
<style> 

table{ border-collapse: collapse;}.table1{border: 0.2em solid;} .cent1{text-align: center;} .right1{text-align:right;} .justi{text-align:justify;} td {font-size: 22px; width:2em;
    height: 40px;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>b_sc_appform</title>
<script language = "Javascript">

function Validatefrom(){
var firstname=document.frm.first_name; //here you type ur email filed like document.frm.[Email]
var lastname=document.frm.last_name;
var fathername=document.frm.fa_name;
var nationality=document.frm.nationality;

if ((firstname.value==null)||(firstname.value=="")){
alert("Please Enter your name");
firstname.focus();
return false;
}
if ((lastname.value==null)||(lastname.value=="")){
	alert("Please Enter Last name");
	lastname.focus();
	return false;
	}
if ((fathername.value==null)||(fathername.value=="")){
	alert("Please Enter Fathers name");
	fathername.focus();
	return false;
	}
if ((nationality.value==null)||(nationality.value=="")){
	alert("Please Enter Nationality ");
	nationality.focus();
	return false;
	}
return true;
}
</script>
</head>
<body onload="myfunction()">
<jsp:include page="_header.jsp"></jsp:include>
<div class="upp"></div>
<form name="frm" onSubmit="return Validatefrom()" action="B_Sc_appform_action.jsp" method="post" >
<center>

<table width="80%" bgcolor="#EAFC55" >
<tr><th><font size="5"> Online Application From For B.Sc Course </font></th></tr></table>
<table width="80%" bgcolor="#00FFFF" class="table1" >
<tr><td colspan="1" onclick="window.location = 'homepage.jsp';">HOME</td><td>Reg_Id:<input type="hidden" name="reg_id" value="<%=session.getAttribute("reg_id")%>"><%=session.getAttribute("reg_id")%></td><td colspan="2" align="right"><font size="5" color="red">
Wel Come &nbsp; <%=session.getAttribute("first_name")%>&nbsp;<%=session.getAttribute("last_name")%></font></td></tr>
<tbody>
<tr><td colspan="4"><table width="100%" bgcolor="FFEBCD"  >
<tr><th align="center"><font size="5"> <u>Personal Details </u></font></th></tr></table></td></tr>
<tr><td>First Name:</td><td><input type="text" size="25" name="first_name" value="" /></td><td></td><td></td></tr>

<tr><td>Last Name:</td><td><input type="text" size="25" name="last_name" value=""/></td><td></td>
<td rowspan="4">
<table style="width:80%;">

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr></tr>

<tr><td></td></tr>
</table>

</td>
</tr>



<tr><td>Father's Name:</td><td><input type="text" size="25" name="fa_name" value=""/></td><td></td></tr>

<tr><td>Date Of Birth:</td><td><input type="date" size="25" name="dob" value=""/></td> </tr>

<tr><td>Gender:</td><td><font size="3">
<input type="radio" name="gender" value="male" > Male
  <input type="radio" name="gender" value="female"> Female
  <input type="radio" name="gender" value="other"> Other</font>
</td><td></td></tr>

<tr><td>Nationality:</td><td><input type="text" size="25" name="nationality" value=""/></td><td></td><td></td></tr>
<tr><td>Category:</td><td><select name="Category">
    <option value="">Select</option>
    <option value="General">General</option>
    <option value="OBC">OBC</option>
    <option value="SC">SC</option>
    <option value="ST">ST</option>
</select></td><td></td><td></td></tr>

<tr><td colspan="4"> <input type="hidden" name="reg_id1" value="<%=session.getAttribute("reg_id")%>"> <input type="hidden" name="reg_id2" value="<%=session.getAttribute("reg_id")%>"></td></tr>
<tr><td colspan="4"><table width="100%" bgcolor="FFEBCD"  >
<tr><th align="center"><font size="5"> <u> Address </u></font></th></tr></table></td></tr>
<tr>
<td colspan="2">

<script type="text/javascript">
function copyTextValue(bf) {
  var text1 = bf.checked ? document.getElementById("village").value : '';
  var text2 = bf.checked ? document.getElementById("po").value : '';
  var text3 = bf.checked ? document.getElementById("ps").value : '';
  var text4 = bf.checked ? document.getElementById("dist").value : '';
  var text5 = bf.checked ? document.getElementById("state").value : '';
  var text6 = bf.checked ? document.getElementById("contact").value : '';
  document.getElementById("village1").value = text1;
  //document.getElementById("village1").disabled = true;
  document.getElementById("po1").value = text2;
 // document.getElementById("po1").disabled = true;
  document.getElementById("ps1").value = text3;
  //document.getElementById("ps1").disabled = true;
  document.getElementById("dist1").value = text4;
  //document.getElementById("dist1").disabled = true;
  document.getElementById("state1").value = text5;
 // document.getElementById("state1").disabled = true;
  document.getElementById("contact1").value = text6;
  //document.getElementById("contact1").disabled = true;
  
}</script>


<table align="left" width="100%">
<tr ><td align="center" colspan="2"><u>Present Address</u></td></tr>
<tr class="cent1"><td>Village:</td><td><input id="village" type="text" size="25" name="village" value=""/></td></tr>
<tr class="cent1"><td>P.O.:</td><td><input id="po" type="text" size="25" name="po" value=""/></td></tr>
<tr class="cent1"><td>P.S.:</td><td><input id="ps" type="text" size="25" name="ps" value=""/></td></tr>
<tr class="cent1"><td>Dist:</td><td><input id="dist" type="text" size="25" name="dist" value=""/></td></tr>
<tr class="cent1"><td>State:</td><td><input  id="state" type="text" size="25" name="state" value=""/></td></tr>
<tr class="cent1"><td>Contact No:</td><td><input id="contact" type="text" size="25" name="contact" value=""/></td></tr></table>
</td>
<td colspan="2">

<table align="left" width="100%">

<tr class="cent1"><td><font size="3">Same as Present Address</font><input type="checkbox" name="check1" onchange="copyTextValue(this);" /></td><td colspan="2" align="center"><u>Permanent Address</u></td> </tr>
<tr class="cent1"><td>Village:</td><td><input id="village1" type="text" size="25" name="village1" value=""/></td></tr>
<tr class="cent1"><td>P.O.:</td><td><input id="po1" type="text" size="25" name="po1" value=""/></td></tr>
<tr class="cent1"><td>P.S.:</td><td><input id="ps1" type="text" size="25" name="ps1" value=""/></td></tr>
<tr class="cent1"><td>Dist:</td><td><input id="dist1" type="text" size="25" name="dist1" value=""/></td></tr>
<tr class="cent1"><td>State:</td><td><input id="state1" type="text" size="25" name="state1" value=""/></td></tr>
<tr class="cent1"><td>Contact No:</td><td><input id="contact1" type="text" size="25" name="contact1" value=""/></td></tr>
</table>
</td>
</tr>

<tr><td colspan="4" ></td></tr>

<!--  
<tr><td colspan="4"><table width="100%" bgcolor="FFEBCD"  >
<tr><th align="center"><font size="5"> <u>Permanent Address </u></font></th></tr></table></td></tr>
-->

<tr><td colspan="4"><table width="100%" bgcolor="FFEBCD"  >
<tr><th align="center"><font size="5"> <u> Academic Details </u></font></th></tr></table></td></tr>
<tr>
<td colspan="4">
<table width="100%" border="1px solid black">
<tr align="center"><td > <font size="3">Qualification</font></td><td>Year</td><td>Board</td><td>Marks Obtain</td><td>Total Marks</td><td>Percentage</td></tr>
<tr class="cent1"><td><input type="hidden" name="qualification" value="M.P">M.P.:</td><td><input type="text" size="5" name="mpyear" value=""required></td><td><input type="text" size="5" name="mpboard" value=""></td><td><input type="text" size="5" name="mpmarksobtain" value=""></td><td><input type="text" size="5" name="mptotalmarks" value=""></td><td><input type="text" size="5" name="mppercentage" value=""></td></tr>
<tr class="cent1"><td><input type="hidden" name="qualification1" value="H.S">H.S.:</td><td><input type="text" size="5" name="hsyear" value=""required></td><td><input type="text" size="5" name="hsboard" value=""></td><td><input type="text" size="5" name="hsmarksobtain" value=""></td><td><input type="text" size="5" name="hstotalmarks" value=""></td><td><input type="text" size="5" name="hspercentage" value=""></td></tr>
<tr class="cent1"><td><font size="2">Others Course:(optional)</font><br><input type="text" size="5" name="others_quali" value=""></td><td><input type="text" size="5" name="others_year" value=""></td><td><input type="text" size="5" name="others_board" value=""></td><td><input type="text" size="5" name="others_marksobtain" value=""></td><td><input type="text" size="5" name="others_totalmarks" value=""></td><td><input type="text" size="5" name="others_percentage" value=""></td></tr>

</table>
</td></tr>

<tr><td colspan="4" ></td></tr>
<tr><td colspan="4"><table width="100%" bgcolor="FFEBCD"  >
<tr><th align="center"><font size="5"> <u>Declaration </u></font></th></tr></table></td></tr>
<tr><td colspan="4" > <u><font size="4">&nbsp;Note:</font></u><br><font size="3">I beg to apply to your College for the academic session 2017-18 on the terms and conditions laid down or as may be laid down by the College/University from
the time to time. I bind myself to complete the full course of U.G. learning after being admitted. I also undertake to abide by the rules and dicscipline of
the concerned College as well as the University guidelines.<br><br>
I certify that particulars about myself recorded herein are correct to the best of my knowledge.</font></td></tr>

<tr><td colspan="3" onclick="myFunction()"><input type="checkbox"  name="check" oninvalid="alert('Please Tick the Checkbox!');" required /></td><td></td></tr>
<tr><td ></td><td></td><td></td></tr>



<tr class="cent1" ><td colspan="4" > <input id="myBtn" type="button" class= "button22" Value="Back" onclick="window.location = 'login_Success.jsp';"><button id="myBtn1" class="button22" style="vertical-align:left"><span>Submit </span></button></td></tr>
</tbody>
</table>

</center>
</form>
</body>
</html>