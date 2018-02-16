<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style1.css">
<title>forget_pass</title>
</head>
<jsp:include page="_header.jsp"></jsp:include>
<body>
<form action="forget_action.jsp" method="post">
<div class="upp"><h2>Fill Up the Appropriate Details</h2><br></div>

<div class="cent" >
<div class="leftt">
<center>
First Name:&nbsp;&nbsp;<input type="text" name="first_name" value=""/><br><br>
Last Name:&nbsp;&nbsp;<input type="text" name="last_name" value=""/><br><br>
Father's name:&nbsp;&nbsp;<input type="text" name="fa_name" value=""/><br><br>
Email-Id:&nbsp;&nbsp;<input type="text" name="email" value=""/><br><br>
 <button class="button22" style="vertical-align:left"><span>Submit </span></button>
  <input class= "button22" type="reset" value="Reset" /> <br>
  
   </center>
   </div>
   </div>
   
   </form>
   <div class="coler">
  </div>
</body>
<jsp:include page="_footer.jsp"></jsp:include>	
</html>