<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4> �α׾ƿ� </h4>
<c:choose>
	<c:when test="${param.LOGOUT_RESULT=='SUCCESS'}">
	�α׾ƿ��� �Ǿ����ϴ�.<br>
	</c:when>
	<c:otherwise>
	�α׾ƿ��� �����߽��ϴ�. <br>
	</c:otherwise>
</c:choose>
<a href="CUKBM_FrontPage.jsp">Front��</a>
</body>
</html>
