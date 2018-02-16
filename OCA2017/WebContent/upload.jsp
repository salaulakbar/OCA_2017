<script>
function validation() {
   var x = document.forms["myform"]["username"].value;
    if (x == null || x == "") {
        alert("username cannot be empty..!!");
        return false;
    }
</script>
<form name="myform" action="upload.jsp" onsubmit="return validation()">
    <input type="text" name="username">
    <input type="submit">
</form>