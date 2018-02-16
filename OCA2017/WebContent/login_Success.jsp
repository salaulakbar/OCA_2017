<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style1.css">
<style>
.head1 {
	margin: 10px 7em 0px; 
}
.font1{font-size:20px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login_success</title>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<div class="upp"></div>

	<center>
		<table width="100%" align="right">
			<tr><td ><font color="lightblue">-----------------------------------------------</font></td>
				<th colspan="" bgcolor="#00FF00" align="char"><font size="5.5">Select Your Course Below</font></th>
				<td align="right"><font size="5" color="white">
Wel Come <%=session.getAttribute("first_name")
%>&nbsp;<%=session.getAttribute("last_name")
%></font></td>
			</tr>
		</table>
		</center>
		<br><br>
	
	<form>

		<div class="head1">
			<table align="left">
				<tr>
					<th>
						<table align="left" bgcolor="#FFFFF" width="100%">
							<tr>
								<th><font size="3"> Apply in HONOURS Subject</font></th>
							</tr>
						</table>
					</th>
				</tr>
				<tr>
					<td>
						<table align="left" class="font1">
							<tr>
								<td></td>
							</tr>
							<tr>
								<td>For B.Sc Course:</td>
								<td><input type="text" class="button22"
									onclick="window.location = 'B_Sc_appform.jsp';" value="Click">
								</td>
							</tr>
							<tr>
								<td>For B.A Coures:</td>
								<td><input type="text" class="button22"
									onclick="window.location = 'B_Sc_appform.jsp';" value="Click">
								</td>
							</tr>
							<tr>
								<td>For B.Com Coures:</td>
								<td><input type="text" class="button22"
									onclick="window.location = 'B_Sc_appform.jsp';" value="Click">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="head1">
			<table align="right">
				<tr>
					<th>
						<table align="left" bgcolor="#FFFFFF" width="100%">
							<tr>
								<th><font size="3">Apply in GENERAL Subject</font></th>
							</tr>
						</table></th>
				</tr>
				<tr>
					<td>
						<table align="left" class="font1">
							<tr>
								<td>General Course:</td>
								<td><input type="text" class="button22"
									onclick="window.location = 'B_Sc_appform.jsp';" value="Click">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<br> <br>

	</form>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>