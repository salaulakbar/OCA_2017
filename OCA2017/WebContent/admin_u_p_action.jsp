<%@ page import ="java.sql.*" %>
<%

    String admin_id = request.getParameter("admin_id");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbocas","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select first_name,last_name from admin_reg where admin_id='" + admin_id + "' and password='" + pwd + "'");
    if (rs.next()) {
    	String fname = rs.getString("first_name");
        session.setAttribute("first_name",fname);
        String lname = rs.getString("last_name");
        session.setAttribute("last_name",lname);
        //session.setAttribute("userid", userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("admin_login_success.jsp");
        
        //out.println("Your User Id  is= "+userid);
        //out.println("Your Password is= " + pwd);
    } else {
    	 response.sendRedirect("admin_login.jsp?Invalid_password");
        //out.println("Invalid password <a href='apply_online.jsp'>try again</a>");
    }
%>
