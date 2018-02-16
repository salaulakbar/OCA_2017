<%@ page import ="java.sql.*" %>
<%
    String reg_id = request.getParameter("reg_id");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbocas","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select first_name,last_name,reg_id_user from stu_reg where reg_id_user='" + reg_id + "' and pass='" + pwd + "'");
    if (rs.next()) {
    	String fname = rs.getString("first_name");
        session.setAttribute("first_name",fname);
        String lname = rs.getString("last_name");
        session.setAttribute("last_name",lname);
        String reg_id1 = rs.getString("reg_id_user");
        session.setAttribute("reg_id", reg_id1);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("login_Success.jsp");
        
        //out.println("Your User Id  is= "+userid);
        //out.println("Your Password is= " + pwd);
    } else {
    	 response.sendRedirect("apply_online1.jsp");
        //out.println("Invalid password <a href='apply_online.jsp'>try again</a>");
    }
%>
