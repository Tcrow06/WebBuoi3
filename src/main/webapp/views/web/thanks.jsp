<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link href="<c:url value='/template/thanks.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container ">

<h1 class="my-4">Thanks for joining our email list</h1>

<p class="mb-4">Here is the information that you entered:</p>

<div class="form-group row">
    <label class="col-sm-2 col-form-label">Email:</label>
    <div class="col-sm-10">
        <p class="form-control-plaintext">${user.email}</p>
    </div>
</div>

<div class="form-group row">
    <label class="col-sm-2 col-form-label">First Name:</label>
    <div class="col-sm-10">
        <p class="form-control-plaintext">${user.firstName}</p>
    </div>
</div>

<div class="form-group row">
    <label class="col-sm-2 col-form-label">Last Name:</label>
    <div class="col-sm-10">
        <p class="form-control-plaintext">${user.lastName}</p>
    </div>
</div>

<div class="form-group row">
    <label class="col-sm-2 col-form-label">Date of Birth:</label>
    <div class="col-sm-10">
        <p class="form-control-plaintext">${user.dateOfBirth}</p>
<%--    <fmt:formatDate value="${user.dateOfBirth}" pattern="yyyy-MM-dd"/>--%>
    </div>
</div>

<div class="form-group row">
    <label class="col-sm-2 col-form-label">You hear about us:</label>
    <div class="col-sm-10">
        <p class="form-control-plaintext">social media</p>
    </div>
</div>



<div class="form-group row">
    <label class="col-sm-2 col-form-label">Announcements:</label>
    <div class="col-sm-10">
        <c:if test="${not empty checkBoxs}">
            <ul class="list-unstyled">
                <c:forEach var="item" items="${checkBoxs}">
                    <li>${item}</li>
                </c:forEach>
            </ul>
        </c:if>
    </div>
</div>

<div class="form-group row">
    <label class="col-sm-2 col-form-label">Contact you:</label>
    <div class="col-sm-10">
        <p class="form-control-plaintext">${user.contact}</p>
    </div>
</div>




<p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>

<form action="<c:url value='/home'/>" method="get">
    <button type="submit" class="btn btn-primary">Return</button>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>