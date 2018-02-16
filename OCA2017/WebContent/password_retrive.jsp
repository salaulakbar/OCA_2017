<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style1.css">
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
	Please Note: &nbsp;&nbsp; 
	Your Password Is = <%=session.getAttribute("pass")%><br>  <!--session call  -->
	
	
	Password Receive Successfully  <br> 
<a href="homepage.jsp">Login Here</a>
</div>
</center>
	</form>
<jsp:include page="_footer.jsp"></jsp:include>	
</body>
</html>