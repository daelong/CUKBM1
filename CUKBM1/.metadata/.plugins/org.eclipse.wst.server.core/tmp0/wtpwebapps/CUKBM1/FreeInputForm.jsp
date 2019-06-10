<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/freeinputform.css" type="text/css" rel="stylesheet">
<meta charset="EUC-KR">
<title>�Խ��� - ����</title>
</head>
<body>
	<div class="logo">
  			<span>CUKBM</span><br> 	
   </div>	
   <header>
   <nav>
  	<c:choose>
		<c:when test="${sessionScope.LOGIN_ID == null }">
			<a href="CUKBM_FrontPage.jsp">HOME</a>
			<a href="Login.jsp">LOGIN</a>
			<a href="Agreement.jsp">JOINUS</a>
		</c:when>
		<c:otherwise>
			<a href="CUKBM_FrontPage.jsp">HOME</a>
			<a href="myPage">MYPAGE</a>
			<a href="msgReceive"><img src='img/icon/bell.png' width=30 height=30></a>
			<a href="logout">LOGOUT</a>		
		</c:otherwise>
	</c:choose>									
  </nav>
  </header>
	<div class="container" id="main">
  <div id="wrap" class="row-fluid wrap">
    <!--Sidebar content-->
    <aside class="well span3 oc" id="side-menu" role="navigation">
      <ul class="nav nav-list">
        <li class="nav-header">SOCCER</li>
        <li><a href="Board?SUBJECT=soccer&TEAM=0">1:1 ���</a></li>
        <li><a href="Board?SUBJECT=soccer&TEAM=1">�����</a></li>
        <li class="nav-header">BASKETBALL</li>
        <li><a href="Board?SUBJECT=basketball&TEAM=0">1:1 ���</a></li>
        <li><a href="Board?SUBJECT=basketball&TEAM=1">�����</a></li>
        <li class="nav-header">TABLE TENNIS</li>
        <li><a href="Board?SUBJECT=tabletennis&TEAM=0">1:1 ���</a></li>
        <li><a href="Board?SUBJECT=tabletennis&TEAM=1">�����</a></li>
        <li class="nav-header">ESPORTS</li>
        <li><a href="Board?SUBJECT=esports&TEAM=0">1:1 ���</a></li>
        <li><a href="Board?SUBJECT=esports&TEAM=1">�����</a></li>
        <li class="nav-header">BADMINTON</li>
        <li><a href="Board?SUBJECT=badminton&TEAM=0">1:1 ���</a></li>
        <li><a href="Board?SUBJECT=badminton&TEAM=1">�����</a></li>
        <li class="nav-header">FREE</li>
         <li><a href="freeBoard?SUBJECT=free">�����Խ���</a></li>
      </ul>
    </aside>
    
    <!--Body content-->
    <section class="well span9 ">
      <div class="write">�����Խ���</div><br>
      <form name="write" action=freeWrite method=post>
      <table class="main">
      <tr><td class="tag">����</td><td class="ct"><input type=text name=title required></td></tr>
      <tr><td class="tag">�ۼ���</td><td class="ct">${sessionScope.LOGIN_ID}��</td></tr>
      <tr>
      	<td class="tag">ī�װ���</td>
      	<td class="ct">
      		<select name="subject" size="1">                   
                     <option value="free">���� �Խ���</option>
            </select><br>
      	</td></tr>
      <tr><td></td><td></td></tr>
      <tr><td colspan='2' class="tarea"><textarea cols=300= rows=20 name=content required></textarea></td></tr>
	  </table>
      <br>
      <div class="input_wrap">
      	<input type=submit value='����'>      
      </div>    
       </form>   
     </section> 
  </div>
</div>
</body>
</html>