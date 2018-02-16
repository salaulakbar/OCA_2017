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
font-size: 18px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin_login</title>

<jsp:include page="_header.jsp"></jsp:include>
</head>


<body  bgcolor="#DBE4F2" >
<div class="upp"></div>
<center>
<table width="65%" bgcolor="#00FFFF" >
<tr>
<th> <font size="5"> Official Use</font></th>
</tr>
</table>
<table width="65%" bgcolor="FFEBCD" style="border: 3px solid black;" >
<tbody class="sizz" > 
<tr><td onclick="window.location = 'homepage.jsp';"><font size="5">Home</font></td></tr>
<tr>
<td colspan="4"><table width="100%" bgcolor="white"  >

<tr><th align="center"><font size="5"> <u>Admin Control </u></font></th></tr></table>
</td>

</tr>
<tr>
<td rowspan="4" colspan="2" align="center" > Admin Registration<br><font size="3"><a href="admin_reg.jsp">Click Here</a></font></td>
<td rowspan="4" align="justify" >&nbsp;&nbsp;<u>Admin LogIn Instraction</u><br><br> <font size"1">All Admin are follow this Step<br><u>Step-1</u>&nbsp;Go to Admin Registration<br><u>Step-2</u>&nbsp;Fill the Correct Details<br><u>Step-3</u> &nbsp;LogIn With correct User Name<br> and Password </font> </td>

</tr>
<tr><td></td></tr>
<tr><td>
<form action="admin_u_p_action.jsp" method="post">
<table width="100%" bgcolor="white"  >
<tr><td colspan="" align="center"> <font size="5"> <u>Log In</u></font></td></tr>
<tr><td > Admin-Id:&nbsp;<input type="text" size="25" name="admin_id" value=""/></td></tr>
<tr><td></td></tr>
<tr><td> Password:&nbsp;<input type="password" size="25" name="pass" value=""></td></tr>
<tr><td> ---</td></tr>
<tr><td align="center" > <button>Submit</button>
 <input type="reset" value="Reset" /></td></tr>
</table>
</form>
</td></tr>



</tbody>
</table>
</center>
</body>
<jsp:include page="_footer.jsp"></jsp:include>
</html>