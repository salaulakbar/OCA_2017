<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 

 <style> table, th, td {
    border: 1px solid black;
} 
</style>
 -->
<style>
.upp {
	margin:69px ;
	text-align:center;

}
.sizz{
font-size: 20px;
}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin_reg</title>
<script language = "Javascript">
function emailcheck(str) {
var at="@";
var dot=".";
var lat=str.indexOf(at);
var lstr=str.length;
var ldot=str.indexOf(dot);
if (str.indexOf(at)==-1){
alert("Invalid E-mail ID");
return false;
}
if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
alert("Invalid E-mail ID");
return false;
}
if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
alert("Invalid E-mail ID");
return false;
}
if (str.indexOf(at,(lat+1))!=-1){
alert("Invalid E-mail ID");
return false;
}

if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
alert("Invalid E-mail ID");
return false;
}

if (str.indexOf(dot,(lat+2))==-1){
alert("Invalid E-mail ID");
return false;
}

if (str.indexOf(" ")!=-1){
alert("Invalid E-mail ID");
return false;
}
//response.sendRedirect("welcome.jsp");
//return true 
}

function ValidateEmail(){
var emailID=document.frm.email; //here you type ur email filed like document.frm.[Email]

if ((emailID.value==null)||(emailID.value=="")){
alert("Please Enter your Email Address");
emailID.focus();
return false;
}
if (emailcheck(emailID.value)==false){
emailID.value="";
emailID.focus();
return false;
}
return true;
}
</script>
<jsp:include page="_header.jsp"></jsp:include>
</head>
<body  bgcolor="#DBE4F2">
<div class="upp"></div>
<center>
<table width="65%" bgcolor="#00FFFF" >
<tr>
<th> <font size="5">Registration For Admin Only</font></th>
</tr>
</table>
<form name="frm" onSubmit="return ValidateEmail()" action="admin_reg_action.jsp" method="post" >
<table width="65%" bgcolor="FFEBCD" style="border: 3px solid black;" >
<tbody class="sizz" > 
<tr><td onclick="window.location = 'homepage.jsp';"><font size="5">Home</font></td></tr>
<tr>
<td colspan="5"><table width="100%" bgcolor="white"  >

<tr><th align="center"><font size="5"> <u>Personal Details </u></font></th></tr></table>
</td>

</tr>
<tr><td><font color="FFEBCD">------------</font></td></tr>
<tr><td></td>
<td colspan="2"> First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="25" name="first_name" value=""/></td><td colspan="2"> Last Name:&nbsp;&nbsp;<input type="text" size="25" name="last_name" value=""/></td>

</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td>
<td colspan="2"> Date Of Birth:&nbsp;&nbsp;<input type="date" size="50" name="dob" value=""/></td>
<td></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td>
<td colspan="2">Department:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="department">
    <option value="">Select</option>
    <option value="Science">Science</option>
    <option value="Arts">Arts</option>
    <option value="Commarce">Commarce</option>
   
</select></td>
<td></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td>
<td colspan="2"> Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="Subject">
    <option value="">Select</option>
    <option value="BENG">Bengali</option>
    <option value="ENG">English</option>
    <option value="MATH">Math</option>
    <option value="GEO">Geography</option>
    <option value="HIST">History</option>
    <option value="Botany">Botany</option>
   
</select></td>
<td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td><td colspan="2"> Employee Id:&nbsp;&nbsp;&nbsp;<input type="text" size="25" name="Emp_Id" value=""/></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td><td colspan="2"> Contact No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="25" name="Contact" value=""/></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td><td colspan="2"> Email-Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="25" name="email"/></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td><td colspan="2">Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" size="25" name="pass" value="" /></td>
</tr> 

<tr><td><font color="FFEBCD">------------</font></td></tr>
<tr><td></td><td colspan="3"><input type="checkbox"  name="check" oninvalid="alert('Please Tick the Checkbox!');" required /> <font size="3"> I certify that particulars about myself recorded herein are correct to the best of my knowledge.</font></td></tr>
<tr><td></td><td colspan="3" align="center"><input type="button" value="Back" onclick="window.location = 'admin_login.jsp';"> <button>Submit</button>
 <input type="reset" value="Reset" /></td></tr>
 
 <tr><td></td></tr>
<tr><td></td></tr>
</tbody>
</table>
</form>
</center>
</body>
<jsp:include page="_footer.jsp"></jsp:include>
</html>