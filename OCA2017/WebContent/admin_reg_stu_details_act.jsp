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
	margin:90px ;
	text-align:center;

}
.sizz{
font-size: 20px;
}
</style>
<body bgcolor="FFEBCD">
<jsp:include page="_header.jsp"></jsp:include>
<div class="upp"></div>
<h2 align="center"><font><strong><u>Registration Student Details</u></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="" border="2">
<tr>

</tr>
<tr bgcolor="gray">

<td><b>Reg_id</b></td>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Email</b></td>
<td><b>Phone</b></td>
<td><b>Reg_Date</b></td>
<td><b>Father Name</b></td>
<td><b>Date Of Birth</b></td>
<td><b>Gender</b></td>
<td><b>Nationality</b></td>
<td><b>Category</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM stu_reg,personal_details where stu_reg.reg_id_user=personal_details.reg_id";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="">


<td><%=resultSet.getString("reg_id_user") %></td>
<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("last_name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phon") %></td>
<td><%=resultSet.getString("regdate") %></td>
<td><%=resultSet.getString("fa_name") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("nationality") %></td>
<td><%=resultSet.getString("category") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>

<center>
<div></div><br>
<button onclick="window.location = 'admin_login.jsp';">Home</button>&nbsp;&nbsp;<button onclick="window.location = 'admin_login_success.jsp';">Back</button>
</center>
<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>
