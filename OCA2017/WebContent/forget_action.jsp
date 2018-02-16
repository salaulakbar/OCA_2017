<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("first_name");    
    String lname = request.getParameter("last_name");
    String faname = request.getParameter("fa_name");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbocas","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select pass from stu_reg where first_name='" + fname + "' and last_name='" + lname + "'and fa_name='" + faname + "'and email='" + email + "'");
    
    if (rs.next()) {
    	String pwd = rs.getString("pass");
        session.setAttribute("pass",pwd);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("password_retrive.jsp");
        //out.println("Your password  is= "+pwd);
      
    } else {
    	//response.sendRedirect("reg_success.jsp?password="+pwd);
    	response.sendRedirect("forget_password1.jsp");
       // out.println("Write correct Details");
    }
%>
