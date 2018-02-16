<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "dbocas";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<style>
.upp {
	margin:69px ;
	text-align:center;

}
.sizz{
font-size: 20px;
}

</style>


<%
String reg_id = request.getParameter("reg_id");    
String pass = request.getParameter("pass");
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM stu_reg,personal_details,address,academic_details where stu_reg.reg_id_user=personal_details.reg_id AND stu_reg.reg_id_user=address.reg_id AND stu_reg.reg_id_user=academic_details.reg_id AND reg_id_user = '"+ reg_id +"'and pass='" + pass + "'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<body bgcolor="#DBE4F2">
<div class="upp"></div>
<h2 align="center"><font><strong>Wel Come <%=resultSet.getString("first_name") %>&nbsp;<%=resultSet.getString("last_name") %></strong></font></h2>
<table width="80%" align="center"  bgcolor="FFEBCD">
<tr>

</tr>
<tr>


<td colspan="4" ><b>Reg_id</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultSet.getString("reg_id_user") %></td></tr>

<tr><th align="center" colspan="6"><font size="5"> <u> Personal Details </u></font></th></tr>
<tr><td><b>First Name</b></td><td><%=resultSet.getString("first_name") %></td>
<td><b>Last Name</b></td><td><%=resultSet.getString("last_name") %></td></tr>
<tr><td><b>Father Name</b></td><td><%=resultSet.getString("fa_name") %></td></tr>
<tr><td><b>Date Of Birth</b></td><td><%=resultSet.getString("dob") %></td></tr>
<tr><td><b>Gender</b></td><td><%=resultSet.getString("gender") %></td></tr>
<tr><td><b>Category</b></td><td><%=resultSet.getString("category") %></td></tr>
<tr><td><b>Nationality</b></td><td><%=resultSet.getString("nationality") %></td></tr>
<tr><th align="center" colspan="6"><font size="5"> <u> Address Details </u></font></th></tr>


<tr><td><b>Village</b></td><td><%=resultSet.getString("village") %></td></tr>
<tr><td><b>Post Office</b></td><td><%=resultSet.getString("post_office") %></td></tr>
<tr><td><b>Police Station</b></td><td><%=resultSet.getString("police_station") %></td></tr>
<tr><td><b>Dist</b></td><td><%=resultSet.getString("dist") %></td></tr>
<tr><td><b>State</b></td><td><%=resultSet.getString("state") %></td></tr>
<tr><td><b>Email</b></td><td><%=resultSet.getString("email") %></td></tr>
<tr><td><b>Phone</b></td><td><%=resultSet.getString("phon") %></td></tr>
<tr><th align="center" colspan="6"><font size="5"> <u> Academic Details </u></font></th></tr>
<tr><td><b>Qualification</b></td><td><b>Year</b></td><td><b>Board</b></td><td><b>Marks Obtain</b></td><td><b>Total Marks</b></td><td><b>Percentage</b></td></tr>
<tr><td><%=resultSet.getString("qualification") %></td><td><%=resultSet.getString("year") %></td><td><%=resultSet.getString("board") %></td><td><%=resultSet.getString("marks_obtain") %></td><td><%=resultSet.getString("total_marks") %></td><td><%=resultSet.getString("percentage") %></td></tr>
<tr><td><%=resultSet.getString("qualification1") %></td><td><%=resultSet.getString("year1") %></td><td><%=resultSet.getString("board1") %></td><td><%=resultSet.getString("marks_obtain1") %></td><td><%=resultSet.getString("total_marks1") %></td><td><%=resultSet.getString("percentage1") %></td></tr>
<tr><td><%=resultSet.getString("qualification2") %></td><td><%=resultSet.getString("year2") %></td><td><%=resultSet.getString("board2") %></td><td><%=resultSet.getString("marks_obtain2") %></td><td><%=resultSet.getString("total_marks2") %></td><td><%=resultSet.getString("percentage2") %></td></tr>


<tr><td colspan="6"align="center"><button onclick="window.location = 'print_application.jsp';">Back</button>&nbsp;&nbsp;<input type="button" value="Print" onClick="window.print()">

</td></tr>

<% 
}
//out.println("<center><font size=5> Invalid password <a href='print_application.jsp'>Try again</a></font></center>");
} catch (Exception e) {
e.printStackTrace();
out.println("<center><font size=5> Invalid password <a href='print_application.jsp'>Try again</a></font></center>");
}
%>

</table>
</body>
</html>
