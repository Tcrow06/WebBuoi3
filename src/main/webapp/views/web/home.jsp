<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Thinh
  Date: 8/28/2024
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link href="<c:url value='/template/style.css' />" rel="stylesheet" type="text/css" media="all"/>

</head>
<body>
<div class="container">
<img class="logo" src="<c:url value='/template/image/images.png'/> " alt="">
<h1 class="header h1">Survey</h1>
<p>If you have a moment, we'd appreciate it if you would fill out this survey </p>


<form action="<c:url value='/home'/> " method="post">

    <h2 class="header h2">Your information</h2>
    <span class = "input_info">
            <label >First Name: </label>
            <input text = "text" name = "firstName" required><br>
            <label >Last Name: </label>
            <input text = "text" name = "lastName" required><br>
            <label >Email: </label>
            <input text = "email" name = "email" required><br>
            <label >Date of Birth: </label>
            <input type = "date" name = "date" required><br>
        </span>


    <h2 class="header h2">How did you hear about us</h2>
    <div class="radio_button">
            <input type="radio" name="industry" value="Search engine">
            <label >Search engine</label><br>
            <input type="radio" name="industry" value="Word of mouth">
            <label >Word of mouth</label><br>
            <input type="radio"  name="industry" value="Social Media">
            <label >Social Media</label>
            <input type="radio" name="industry" value="Other">
            <label >Other</label>
    </div>

    <h2 class="header">Would you like to receive announcements about new CDs and special offers</h2>
    <div>
        <input type="checkbox" name="yes" value="YES, I'd like that">
        <label> YES, I'd like that</label><br>
        <input type="checkbox" name="yes" value="YES, please send me email announcements">
        <label > YES, please send me email announcements</label><br>
    </div>

    <label >Please contact me by</label>
    <select name="contact-method" id="contact-method" required>
        <option value="" disabled selected>Email or postal email</option>
        <option value="Email">Email</option>
        <option value="Postal email">Postal email</option>
    </select>
    <br>
<%--    <input type="hidden" name="hiddenYes" value="false" id="hiddenYes1">--%>
<%--    <input type="hidden" name="hiddenYes" value="false" id="hiddenYes2">--%>
    <button class="button-submit" type = "submit" >Submit</button>

</form>

</div>
<%--<script>--%>
<%--    let checkBoxs = document.querySelectorAll("input[type='checkbox'][name^='yes']")--%>
<%--    checkBoxs.forEach(function (checkbox, index){--%>
<%--        checkbox.addEventListener("change", function (){--%>
<%--            document.getElementById("hiddenYes" + index).disable = this.checked;--%>
<%--        })--%>
<%--    })--%>
<%--</script>--%>

</body>
</html>