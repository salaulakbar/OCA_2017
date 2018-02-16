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
.button22 {
	display: inline-block;
	border-radius: 8px;
	background-color: grey;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 18px;
	padding: -7px;
	width: 200px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 8px 5px 0px;
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
<table width="80%" bgcolor="#00FFFF" >
<tr>
<th> <font size="5"> Admin Use Only</font></th>
</tr>
</table>
<table width="80%" bgcolor="FFEBCD" style="border: 3px solid black;" >
<tbody class="sizz" > 
<tr><td onclick="window.location = 'homepage.jsp';"><font size="5">Home</font></td><td><font color="FFEBCD">------------</font></td>
<td align="right">
Wel Come Admin <%=session.getAttribute("first_name")
%>&nbsp;<%=session.getAttribute("last_name")
%> </td></tr>
<tr>
<td colspan="4"><table width="100%" bgcolor="white"  >

<tr><th align="center"><font size="5"> <u>Admin Control </u></font></th></tr></table>
</td>

</tr>
<tr><td colspan="4">
<table width=100%>

<tr align="center"><td class="button22" onclick="window.location = 'admin_reg_stu_details_act.jsp';">Registration Student Details</td><td class="button22" onclick="window.location = 'show_admin_datails.jsp';">Admin<br>  Details</td></tr>
<tr><td><br></td></tr>
</table>
</td></tr>
</tbody>
</table>
</center>
</body>
<jsp:include page="_footer.jsp"></jsp:include>
</html>