<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̴����� ���θ�</title>
</head>
<body>
	<H3>�������� ���θ�</H3>
	<table border=1 cellpadding=10>
		<tr>
			<td width=150 valign=top>
			<c:choose>
				<c:when test="${sessionScope.LOGIN_ID == null }">
					<jsp:include page="LoginWindow.html"/>
				</c:when>
				<c:otherwise>
					<jsp:include page="LogoutWindow.jsp"/>
				</c:otherwise>
			</c:choose>
				<a href="Home.jsp?BODY_PATH=Intro.html">���θ� �Ұ�</a><br>
				<a href>����</a><br>
				<a href>����</a><br>
				<a href>�ƿ���</a><br>
				<a href>�׼�����</a><br>
				<a href>��ȭ</a><br>
			</td>
			<td width=650 valign=top>
				<jsp:include page="${param.BODY_PATH}"/>
			</td>
		</tr>
	</table>
</body>
</html>