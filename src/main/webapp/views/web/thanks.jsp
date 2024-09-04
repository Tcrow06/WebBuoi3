<%--
  Created by IntelliJ IDEA.
  User: Thinh
  Date: 8/28/2024
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <title>Murach's Java Servlets and JSP</title>
    <link href="<c:url value='/template/thanks.css' />" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>

<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>

<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<label>Date of Birth:</label>
<span>${user.dateOfBirth}</span><br>
<label>You hear about us: </label>
<span>${industry}</span><br>
<label>You would like to receive announcements about new CDs and special offers</label>
<c:if test="${not empty checkBoxs}"> <ul><c:forEach var="item" items="${checkBoxs}"><li>${item}</li></c:forEach></ul>
</c:if>

<p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

<form action="<c:url value='/home'/> " method="get">
    <input type="submit" value="Return" id="submit">
</form>
</body>
</html>
