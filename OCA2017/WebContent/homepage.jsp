<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style1.css">
<title>home_page</title>

<style> .heading{margin:70px 0px 0px;
		position: fixed;
        color: black;
        width: 100%;
        font-size: 23px;
        height:40px;
        text-align: center;
        background-image: linear-gradient;
    	margin: 76px -8px -10px;
    	clear: both;
        top:-2px;
        padding:0px;
		}
.mySlides {display:none;} 
.w3-animate-fading{animation:fading 10s infinite}
@keyframes fading{0%{opacity:0}50%{opacity:1}100%{opacity:0}}
</style>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	
	<form><table class="heading" width="100%" bgcolor="#EEFFFF"><tr><th><marquee direction="left" scrollamount="3">Welcome to Online College Admission Portal-2017</marquee></th></tr>
	</table>
<div class="upp"></div>
		<div class="head">
			<input type="button" class="button" value="Home" onclick="window.location = 'homepage.jsp';">&nbsp;&nbsp;
			<input type="button" class="button" value="Admin" onclick="window.location = 'admin_login.jsp';">&nbsp;&nbsp;&nbsp;
			<div class="right">
				Admission Notice
				<div class="right1">
					<marquee direction="up" height="300" scrollamount="2"
						bgcolor="AntiqueWhite" onmouseover="this.stop()"
						onmouseout="this.start()">
						<a href="">This marquee will scroll downwards<img
							src="image/newgif.gif">
						</a><br>
						<br> <a href="">This marquee will scroll downwards<img src="image/newgif.gif">
						</a><br>
						<br> <a href="">This marquee will scroll downwards</a><br>
						<br>
						<br> <a href="">This marquee will scroll downwards </a><br>
						<br>
						<br>
					</marquee>
				</div>
			</div>
		</div>
		<div class="body">
			<input type="button" class="button"
				onclick="window.location = 'student_reg.jsp';"
				value="Student Registration"> <br> <br> <input
				type="button" class="button"
				onclick="window.location = 'apply_online.jsp';" value="Apply Online">
			<br> <br> <input type="button" class="button"
				onclick="window.location = 'print_application.jsp';"
				value="Print Application"> <br> <br> 
			</div>
<center>
		 <table class="cent" width="60" bgcolor="#EEFFFF"><tr><td>
		  <img class="mySlides w3-animate-fading" src="image/image_2.jpg" style="width: 650px; height: 300px;">
		  <img class="mySlides w3-animate-fading" src="image/image_1.jpg" style="width: 650px; height: 300px;"> 
		  <img class="mySlides w3-animate-fading" src="image/image_3.jpg" style="width: 650px; height: 300px;">
		  <img class="mySlides w3-animate-fading" src="image/image_4.jpg" style="width: 650px; height: 300px;">
		  <img class="mySlides w3-animate-fading" src="image/image_41.jpg" style="width: 650px; height: 300px;">
		  
<script>
var myIndex = 0;
carousel();
function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000); // Change image every 2 seconds
}
</script>
					</td></tr>
			</table> </center>
		<br>
	</form>
	

	<jsp:include page="_footer.jsp"></jsp:include>
		<div style="color:#ffhhtt; align:left;">
 <%
      java.util.Date date = new java.util.Date();
  
  %>
 <%=date.toString()%>
 </div>
</body>
</html>