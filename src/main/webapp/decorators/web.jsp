<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><dec:title default="Trang chủ" /></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<c:url value='/template/style.css' />" rel="stylesheet" type="text/css" media="all"/>
    <style>
        h1, h2 {
            color: teal;
        }
    </style>

    <!-- css -->
<%--    <link href="<c:url value='/template/web/bootstrap/css/bootstrap.min.css' />" rel="stylesheet" type="text/css" media="all"/>--%>
<%--    <link href="<c:url value='/template/web/css/style.css' />" rel="stylesheet" type="text/css" media="all"/>--%>
</head>
<body>
	<!-- header -->
    <%@ include file="/common/web/header.jsp" %>
    <!-- header -->
    
    <div style="margin-left: 10px">
    	<dec:body/>
    </div>

    <br>
    <br>
	<!-- footer -->
	<%@ include file="/common/web/footer.jsp" %>
	<!-- footer -->
	
<%--	<script type="text/javascript" src="<c:url value='/template/web/jquery/jquery.min.js' />"></script>--%>
<%--    <script type="text/javascript" src="<c:url value='/template/web/bootstrap/js/bootstrap.bundle.min.js' />"></script>--%>
	
</body>
</html>