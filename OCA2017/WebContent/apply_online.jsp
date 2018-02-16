<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style1.css">
<style>

.sizz{
font-size: 25px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>log_In</title>
</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
	<div class="upp"><br></div>
	<form action="apply_online_action.jsp" method="post">
	

	<center>
	<table width="40%" bgcolor="FFEBCD" >
	<tbody class="sizz"><tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr><th colspan="3"><u>Type Your Registration Id  and Password</u><br></th></tr>
	<tr><td></td><td>Registration Id:&nbsp;&nbsp; <input type="text" name="reg_id" value=""/></td></tr>
 	<tr><td></td><td>Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass" value=""/></td></tr>
 	

 <tr><td></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="button22" style="vertical-align:left"><span>LogIn </span></button>
  <input class= "button22" type="reset" value="Reset" /></td></tr>
 
  </tbody>

  <tr><td><font color="FFEBCD">-----------</font></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="forget_password.jsp"> Forget Password </a> &nbsp;Registration Here&nbsp;<a href="homepage.jsp">Click</a>
</td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
  </table></center>
 
 </form>

</body>
<jsp:include page="_footer.jsp"></jsp:include>	
</html>