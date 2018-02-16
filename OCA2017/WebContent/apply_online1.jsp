<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style1.css">
<style> .coll{font-size: 20px; color:red; } </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>log_In</title>
</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
	<div class="upp"><h2>Type Your User Name and Password</h2></div>
	
	<form action="apply_online_action.jsp" method="post">
	
	<div class="cent">
	<div class="leftt">
	<center>
	<div class="coll">
  Please Provide Correct User Name And Password
  </div><br>
	Registration Id: &nbsp;&nbsp;<input type="text" name="reg_id" value=""/><br><br>
 	Password: &nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass" value=""/><br><br></center>
 <div class="cent" >

 <button class="button22" style="vertical-align:left"><span>LogIn </span></button>
  <input class= "button22" type="reset" value="Reset" />
   </div>
  
   </div>
   <br>
   <a href="forget_password.jsp"> Forget Password </a> &nbsp;Registration Here&nbsp;<a href="homepage.jsp">Click</a>
 </div >
 
 </form>

</body>
<jsp:include page="_footer.jsp"></jsp:include>	
</html>