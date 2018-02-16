<%@ page import ="java.sql.*" %>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbocas","root","root");
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("SELECT id FROM admin_reg");
	int id=0; 
   	if(rs.last()){ 
   	id=rs.getInt("id")+1;    
   	}
	//String reg_id = request.getParameter("uname,last_name");
	String firstname = request.getParameter("first_name");    
    String lastname = request.getParameter("last_name");
    String dob = request.getParameter("dob");
    String department = request.getParameter("department");
    String subject = request.getParameter("Subject");
    String employeeid = request.getParameter("Emp_Id");
    String contactno = request.getParameter("Contact");
    String emailid = request.getParameter("email");
  	String password = request.getParameter("pass");
  	String admin_id = id+lastname;
   int i = st.executeUpdate("insert into admin_reg(admin_id,first_name, last_name, dob, department,subject, emp_id,contact_no,email_id,password, reg_date) values ('"+ admin_id +"','" + firstname + "','" + lastname + "','"+ dob + "','" + department + "','" + subject + "','" + employeeid + "','" + contactno + "','" + emailid + "','" + password + "',CURDATE())");
    
    if (i > 0) {
       	session.setAttribute("admin_id", admin_id);   // j kono page a call korte parbi session value k
        response.sendRedirect("admin_reg_success.jsp?password="+password); //ai vabe kono page a parameter hisabe value pathate parbi
        
        //out.println("Your User Id  is= "+emailid);
        //out.println("\n Your Password is= " + pwd);
       //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        //response.sendRedirect("index.jsp");
    }
}
catch(Exception e){}
%>
