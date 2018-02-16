<!--  <html>
<body>

<script language = "Javascript">
$(function () {
    $(":file").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
        }
    });
});

function imageIsLoaded(e) {
    $('#myImg').attr('src', e.target.result);
};
</script>
<input type='file' />
<img id="myImg" src="imageIsLoaded(e)" alt="your image" />
</body>
</html>
-->

<%@ page import="java.sql.*" %>
<%!Statement st=null;
Connection cn=null;
%>
<%
Class.forName("com.mysql.jdbc.Driver");
cn=DriverManager.getConnection("jdbc:mysql://localhost/dbocas","root", "root");
//<!-- database name= data, username=root, password=blank -->
st=cn.createStatement();
%>

<html>
<body>
<form name="form1" method="post" enctype="multipart/form-data" action="insertimage.jsp">
 
<p>
<input type="file" name="ImageFile" id="ImageFile" />
</p>
<p>
<input type="submit" name="submit" value="submit" />
</p>
</form>
</body>
</html>