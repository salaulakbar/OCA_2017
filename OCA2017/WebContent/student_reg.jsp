<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="_header.jsp"></jsp:include>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style1.css">
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
font-size: 22px;
}
</style>

<title>stu_reg</title>
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
var emailID=document.frm.email;  //here you type ur email filed like document.frm.[Email]

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
</head>

<body>
<div class="upp"></div>
<center>
<table><tr><td></td></tr></table>
<form name="frm" onSubmit="return ValidateEmail()" action="student_reg_action.jsp" method="post" >
<table width="65%" bgcolor="FFEBCD" style="border: 3px solid black;" >

<tbody class="sizz" > 
<tr><td onclick="window.location = 'homepage.jsp';"><font size="5">Home</font></td></tr>
<tr>
<td colspan="5"><table width="100%" bgcolor="white"  >

<tr><th align="center"><font size="5"> <u>Student Registration From </u></font></th></tr></table>
</td>

</tr>
<tr><td></td><td colspan="3"><font color="" size="3">Note:- All Fields are Mandatory </font></td></tr>
<tr><td></td></tr>
<tr><td></td>
<td colspan="2"> First Name: <input type="text" size="25" name="first_name" value="" required /></td>
<td colspan="2"> Last Name: <input type="text" size="25" name="last_name" value=""  required/></td>

</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td>
<td colspan="2"> Father's Name: <input type="text" size="25" name="fa_name" value="" required/></td>
<td></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td>
<td colspan="2">Phone No: &nbsp;&nbsp;<input type="text" size="25" name="phon" required/></td>
<td></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td>
<td colspan="2"> Email-Id: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="25" name="email" /></td>
<td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td><td colspan="2">  Password: &nbsp;&nbsp;&nbsp;<input type="password" size="25" name="pass" value="" required/></td>
</tr>

<tr><td><font color="FFEBCD">------------</font></td></tr>
<tr><td></td><td colspan="3"></td></tr>
<tr><td></td><td colspan="3" align="center"> <button>Submit</button>
 <input type="reset" value="Reset" /></td></tr>

<tr><td></td></tr>
<tr><td></td><td></td><td colspan="2"> Already registered!! <a href="homepage.jsp">Login Here</a></td></tr>
 <tr><td></td></tr>


</tbody>
</table>
</form>
</center>
</body>
<jsp:include page="_footer.jsp"></jsp:include>	
</html>