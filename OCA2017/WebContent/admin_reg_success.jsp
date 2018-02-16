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

<jsp:include page="_header.jsp"></jsp:include>
</head>
<body  bgcolor="#DBE4F2">
<div class="upp"></div>
<center>
<table width="65%" bgcolor="#00FFFF" >
<tr>
<th> <font size="5">Successfully Admin Registration</font></th>
</tr>
</table>

<table width="65%" bgcolor="FFEBCD" style="border: 3px solid black;" >
<tbody class="sizz" > 
<tr><td onclick="window.location = 'homepage.jsp';"><font size="5">Home</font></td></tr>
<tr>
<td colspan="5"><table width="100%" bgcolor="white"  >

<tr><th align="center"><font size="5"> <u>Email-Id And Password </u></font></th></tr></table>
</td>
<tr><td></td><td colspan="3">
Please Note: &nbsp;&nbsp;<br><br> 
	Your Admin-Id= <%=session.getAttribute("admin_id")%><br>  <!--session call  -->
	Password= <%=request.getParameter("password")%><br><br> <br>
	
	Successfully Submitted <br></td></tr>

<tr><td><font color="FFEBCD">------------</font></td></tr>
<tr><td colspan="3" align="center"><input type="button" value="Back" onclick="window.location = 'admin_login.jsp';"> 
 </td></tr>
 
 <tr><td></td></tr>
<tr><td></td></tr>
</tbody>
</table>

</center>
</body>
<jsp:include page="_footer.jsp"></jsp:include>
</html>