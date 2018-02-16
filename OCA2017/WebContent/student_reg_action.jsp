<%@ page import ="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="style1.css">
<div class="upp"><br><br> </div>
<%
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbocas","root","root");
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("SELECT id FROM stu_reg");
	int id=0; 
   	if(rs.last()){ 
   	id=rs.getInt("id")+1;    
   	}
	String phon = request.getParameter("phon");  
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("first_name");
    String lname = request.getParameter("last_name");
    String faname = request.getParameter("fa_name");
    String email = request.getParameter("email");
    //String billNumber = t_id+"/"+d+m+"/"+s_id;
     	String reg_Number = id+lname;
       //ResultSet rs;
    int k = st.executeUpdate("insert into stu_reg(reg_id_user, first_name, last_name, fa_name, email, phon, pass, regdate) values ('" + reg_Number + "','" + fname + "','" + lname + "','" + faname + "','" + email + "','" + phon + "','" + pwd + "', CURDATE())");
    if (k > 0) {
        session.setAttribute("userid", reg_Number);   // j kono page a call korte parbi session value k
        response.sendRedirect("reg_success.jsp?password="+pwd); //ai vabe kono page a parameter hisabe value pathate parbi
        
        //out.println("Your User Id  is= "+user);
        //out.println("\n Your Password is= " + pwd);
       //out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        //response.sendRedirect("index.jsp");
    }
	}
    catch(Exception e){}
%>
