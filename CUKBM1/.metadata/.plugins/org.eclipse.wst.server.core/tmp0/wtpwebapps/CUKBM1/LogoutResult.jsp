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
	<h4> 로그아웃 </h4>
<c:choose>
	<c:when test="${param.LOGOUT_RESULT=='SUCCESS'}">
	로그아웃이 되었습니다.<br>
	</c:when>
	<c:otherwise>
	로그아웃에 실패했습니다. <br>
	</c:otherwise>
</c:choose>
<a href="CUKBM_FrontPage.jsp">Front로</a>
</body>
</html>
