<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="<c:url value='/template/error.css' />">
</head>
<body>
<div class="error-container">
    <div class="error-template text-center">
        <h1 style="color: teal">Oops!</h1>
        <h2>404 Not Found</h2>
        <div class="error-details">
            Xin lỗi, đã có lỗi xảy ra, trang bạn yêu cầu không được tìm thấy!
        </div>
        <div class="error-actions mt-4">
            <a href="<c:url value='/home'/> " class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
                Về Trang Chủ </a>
        </div>
    </div>
</div>
</body>
</html>
