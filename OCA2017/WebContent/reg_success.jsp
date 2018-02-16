<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style1.css">

<!-- 
 <style> table, th, td {
    border: 1px solid black;
} 
</style>
 -->
<style> .fonts{font-size: 25px;color:rgb(163, 00, 00); } </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>reg_success</title>
</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
	<div class="upp"></div>
	
	<form action="">
	<center>
	<div class="fonts">
	<table width="30%" bgcolor="FFEBCD" style="border: 3px solid black;">
	<tr><td></td></tr>
	<tr><td colspan="3">Please Note: &nbsp;&nbsp; <br>
	Your User Name= <%=session.getAttribute("userid")%> <br>
	Password= <%=request.getParameter("password")%><br>
	<tr><td colspan="2">Successfully Submitted </td></tr>
<tr><td><font color="FFEBCD">--------</font></td><td colspan=""><a href="homepage.jsp">Login Here</a></td></tr></table>
</div>
</center>
	</form>
<jsp:include page="_footer.jsp"></jsp:include>	
</body>
</html>