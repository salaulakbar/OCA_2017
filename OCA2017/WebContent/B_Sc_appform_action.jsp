<%@ page import ="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="style1.css">
<div class="upp"><br><br> </div>
<%
   //--------------personal details----------------
   	String reg_id = request.getParameter("reg_id"); 
	String reg_id1 = request.getParameter("reg_id1");
	String reg_id2 = request.getParameter("reg_id2");
	String fname = request.getParameter("first_name");
    String lname = request.getParameter("last_name");
    String faname = request.getParameter("fa_name");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");    
    String nationality = request.getParameter("nationality");
    String Category = request.getParameter("Category");
   
    
    
   //---------------present Address--------------------- 
    String village = request.getParameter("village");
    String po = request.getParameter("po");
    String ps = request.getParameter("ps");
    String dist = request.getParameter("dist");
    String state = request.getParameter("state");
    String contact = request.getParameter("contact");
    
    //----------------permanent address------------------
    String village1 = request.getParameter("village1");
    String po1 = request.getParameter("po1");
    String ps1 = request.getParameter("ps1");
    String dist1 = request.getParameter("dist1");
    String state1 = request.getParameter("state1");
    String contact1 = request.getParameter("contact1");
    
    //----------------Qualification MP--------------------------
    String qualification = request.getParameter("qualification");
    String mpyear = request.getParameter("mpyear");
    String mpboard = request.getParameter("mpboard");
    String mpmarksobtain = request.getParameter("mpmarksobtain");
    String mptotalmarks = request.getParameter("mptotalmarks");
    String mppercentage = request.getParameter("mppercentage");
    
    //----------------Qualification HS--------------------------
    String qualification1 = request.getParameter("qualification1");
    String hsyear = request.getParameter("hsyear");
    String hsboard = request.getParameter("hsboard");
    String hsmarksobtain = request.getParameter("hsmarksobtain");
    String hstotalmarks = request.getParameter("hstotalmarks");
    String hspercentage = request.getParameter("hspercentage");
    //----------------Qualification Others---------------------------
    
    String others_quali = request.getParameter("others_quali");
    String others_year = request.getParameter("others_year");
    String others_board = request.getParameter("others_board");
    String others_marksobtain = request.getParameter("others_marksobtain");
    String others_totalmarks = request.getParameter("others_totalmarks");
    String others_percentage = request.getParameter("others_percentage");
    //-----------------Database Connection--------------------------
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbocas","root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
     int i = st.executeUpdate("insert into personal_details(reg_id,first_name, last_name, fa_name, dob, gender, nationality, category) values ('"+ reg_id +"','" + fname + "','" + lname + "','" + faname + "','" + dob + "','" + gender + "','" + nationality + "','" + Category + "')");
     int j = st.executeUpdate("insert into address(reg_id,village, post_office, police_station, dist, state, contactno,vill,po,ps,distric,stat, contact) values ('"+ reg_id1 +"','" + village + "','" + po + "','" + ps + "','" + dist + "','" + state + "','" + contact + "','" + village1 + "','" + po1 + "','" + ps1 + "','" + dist1 + "','" + state1 + "','" + contact1 + "')");
     int k = st.executeUpdate("insert into academic_details(reg_id,qualification,year, board, marks_obtain, total_marks, percentage,qualification1,year1,board1,marks_obtain1,total_marks1, percentage1,qualification2,year2,board2,marks_obtain2,total_marks2,percentage2) values ('"+ reg_id2 +"','" + qualification + "','" + mpyear + "','" + mpboard + "','" + mpmarksobtain + "','" + mptotalmarks + "','" + mppercentage + "','" + qualification1 + "','" + hsyear + "','" + hsboard + "','" + hsmarksobtain + "','" + hstotalmarks + "','" + hspercentage + "','" + others_quali + "','" + others_year + "','" + others_board + "','" + others_marksobtain + "','" + others_totalmarks + "','" + others_percentage + "')");
    
   // if (i > 0) {
        //session.setAttribute("village", village);   // j kono page a call korte parbi session value k
       response.sendRedirect("from_submit_success.jsp"); //ai vabe kono page a parameter hisabe value pathate parbi
        
        //out.println("Your User Id  is= "+qualification);
        //out.println("\n Your Password is= " + pwd);
 
       //out.print("Application From Submit Successfully"+"<a href='homepage.jsp'>Go to HOME</a>");
   // } else {
        //response.sendRedirect("index.jsp");
   // }
%>
