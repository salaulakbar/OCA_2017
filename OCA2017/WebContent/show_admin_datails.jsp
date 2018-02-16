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
<h2 align="center"><font><strong><u>Admin Details</u></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="" border="2">
<tr>

</tr>
<tr bgcolor="gray">

<td><b>Admin_id</b></td>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Date Of Birth</b></td>
<td><b>Department</b></td>
<td><b>Subject</b></td>
<td><b>Employee_Id</b></td>
<td><b>Phone</b></td>
<td><b>Email</b></td>
<td><b>Registration_Date</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM admin_reg";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="">


<td><%=resultSet.getString("admin_id") %></td>
<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("last_name") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("department") %></td>
<td><%=resultSet.getString("subject") %></td>
<td><%=resultSet.getString("emp_id") %></td>
<td><%=resultSet.getString("contact_no") %></td>
<td><%=resultSet.getString("email_id") %></td>
<td><%=resultSet.getString("reg_date") %></td>

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
