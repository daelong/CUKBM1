<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
<style>
	@import url('https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css');
    @import url('https://fonts.googleapis.com/css?family=Comfortaa&display=swap');
    @import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');
.container {
  margin-top: 40px; 
}

.wrap {
  position: relative;
  -webkit-transition: all 0.3s ease-out;  
  -moz-transition: all 0.3s ease-out;
  -ms-transition: all 0.3s ease-out;
  -o-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}
.wrap.active {
  left: 14em;
}
a.side-menu-link {
  float: left;
  display: block;
  padding: 1em;
}

@media screen and (max-width: 48.063em) {
  .js .oc {
    width: auto;
    position: absolute;
    top: 0;
    left: -14em;
  }
}

@media screen and (min-width: 48.25em) {
  a.side-menu-link {
    display: none;
  }
  .wrap.active {
    left: 0;
  }
}
header {
	float: right;
	font-size:17.5px;
	padding:24px 15px;
}
nav a {
  display: inline-block;
  outline: none;
  text-decoration: none;
  opacity: .7;
  padding: 0 .5em;
  color: black;
  transition: opacity .2s ease-in-out;
}
nav a:hover, nav a:focus {
  opacity: 1;
  text-decoration: none;
}
div.logo{
	height: 30vh;
  background-image: url("img/front/pic6_1.jpg");
  background-repeat: no-repeat;
  background-size: cover;
}
div.logo span{
	margin: 0;
  	font-size: 600%;
  	text-align: center;
 	line-height: 1;
 	padding-top: 80px;
 	display: block;
  	font-weight: 400;
  	color: #fff;
  	letter-spacing: 4px;
  	font-family: 'Passion One', cursive;
}
h2{
	margin: 30px 5px 40px;
	font-size: 35px;
	color: #6b6a65; 
	font-family: 'Comfortaa'; 
	text-shadow: -.030em .030em #FFF6E6, -.08em .08em #E7DCD7;
}
div.write{
	width:50px;
	text-align:center;
	float:right;
	background:#757575;
	padding:5px;
	border-radius:5px;
	font-size:13px;
	font-weight:600;
	border: 1.5px solid #757575;
	margin-right: 3px;
	margin-top:10px; 
}

div.write a{
	color:white;
	text-decoration:none;
}

table.content_list{
	text-align:center;
	border:2px solid #b0b0b0;
	color:#505050;
	margin-top:10px;
}
tr, td{
	border:2px solid #b0b0b0;
}
tr.clist_title td{
	background:#f5f2eb;
	font-size:15px;
	font-weight: 700;
	padding-top:20px;
	padding-bottom:20px;
	vertical-align:middle;	
}
td a{
	text-decoration:none;
	color: #505050;
}
td a:hover{
	text-decoration:none;
	color: #F9A825;
}
li.nav-header{
	font-size:13px;
}
div.next_page{
	color: #4d88c0;
	font-size: 15px;
	font-weight:600;
	float:right;
	padding-top:30px;
	margin-right: 10px;
}
a.a_heart, a.a_new{
	color: #bd4836;
	text-decoration:none;
	font-weight:600;
	font-size:14px;
	padding:10px;
}
</style>
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
        <li><a href="Board?SUBJECT=soccer&TEAM=0">1:1 경기</a></li>
        <li><a href="Board?SUBJECT=soccer&TEAM=1">팀경기</a></li>
        <li class="nav-header">BASKETBALL</li>
        <li><a href="Board?SUBJECT=basketball&TEAM=0">1:1 경기</a></li>
        <li><a href="Board?SUBJECT=basketball&TEAM=1">팀경기</a></li>
        <li class="nav-header">TABLE TENNIS</li>
        <li><a href="Board?SUBJECT=tabletennis&TEAM=0">1:1 경기</a></li>
        <li><a href="Board?SUBJECT=basketball&TEAM=1">팀경기</a></li>
        <li class="nav-header">ESPORTS</li>
        <li><a href="Board?SUBJECT=esports&TEAM=0">1:1 경기</a></li>
        <li><a href="Board?SUBJECT=esports&TEAM=1">팀경기</a></li>
        <li class="nav-header">BADMINTON</li>
        <li><a href="Board?SUBJECT=badminton&TEAM=0">1:1 경기</a></li>
        <li><a href="Board?SUBJECT=badminton&TEAM=1">팀경기</a></li>
        <li class="nav-header">FREE</li>
        <li><a href="Board?SUBJECT=free">자유게시판</a></li>
      </ul>
    </aside>
    
    <!--Body content-->
    <section class="well span9 ">
      <h2><%=request.getParameter("SUBJECT") %> 게시판</h2>
      <div class="write">
      	<c:choose>
		<c:when test="${param.TEAM==0}">
		<a href="BoardInputForm.jsp">글쓰기</a>
		</c:when>
		<c:otherwise>
			<a href="BoardInputFormTeam.jsp">글쓰기</a>	
		</c:otherwise>
	</c:choose>
      </div>   
      <br> 
    <a class="a_heart" href="orderedBoard?SUBJECT=${param.SUBJECT}&TEAM=${param.TEAM}">&#9873;인기순</a>
     <a class="a_new" href="Board?SUBJECT=${param.SUBJECT}&TEAM=${param.TEAM}">&#9872;최신순</a>
     <br>
	<table border=1 class="content_list">
	<tr class="clist_title">
		<td width=60>글번호</td>
		<td width=300>제목</td>
		<td width=80>작성자</td>
		<td width=100>작성일자</td>
		<td width=50>&#x1f493;</td>
		<td width=90>현재참여인원</td>
		<td width=90>최대참여인원</td>
	</tr>
	<c:forEach var="cnt" begin="0" end="${Board_List.listSize-1}">
      <tr>
         <td>${Board_List.seqNo[cnt]}</td>
         <td><a href='BoardItem?SEQ_NO=${Board_List.seqNo[cnt]}&TITLE=${Board_List.title[cnt]}'>${Board_List.title[cnt]}</a></td>
         <td>${Board_List.writer[cnt]}</td>
         <td>${Board_List.date[cnt]}</td>
		 <td>${Board_List.heart[cnt]}</td>		 
		 <td>${Board_List.attend_min[cnt]}</td>
		 <td>${Board_List.attend_max[cnt]}</td>
		</tr>
	 </c:forEach>
</table>
<c:if test="${!Board_List.lastPage}">
   <div class="next_page">
   	<a href='Board?LAST_SEQ_NO=${Board_List.seqNo[Board_List.listSize-1]}'>다음페이지</a>
   </div>   
</c:if>
    </section>
    
  </div>
</div>

</body>
</html>