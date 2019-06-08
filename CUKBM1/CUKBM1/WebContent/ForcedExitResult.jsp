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
<c:choose>
		<c:when test="${param.result==1}"> 
			참가자 강퇴가 완료되었습니다.
		</c:when>
		<c:when test="${param.result==0}"> 
			방장이 아니므로 참가자를 강퇴할 수 없습니다.
		</c:when>
		</c:choose>
</body>
</html>