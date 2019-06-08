<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글 읽기</title>
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
li.nav-header{
	font-size:13px;
}
div.result{
	text-align: center;
	font-size: 20px;
	font-weight:500;
	padding: 200px 50px;
	line-height:50px;
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
			<a href="/cukbm/myPage">MYPAGE</a>
			<a href="/cukbm/logout">LOGOUT</a>		
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
        <li><a href="/cukbm/Board?SUBJECT=soccer&TEAM=0">1:1 경기</a></li>
        <li><a href="/cukbm/Board?SUBJECT=soccer&TEAM=1">팀경기</a></li>
        <li class="nav-header">BASKETBALL</li>
        <li><a href="/cukbm/Board?SUBJECT=basketball&TEAM=0">1:1 경기</a></li>
        <li><a href="/cukbm/Board?SUBJECT=basketball&TEAM=1">팀경기</a></li>
        <li class="nav-header">TABLE TENNIS</li>
        <li><a href="/cukbm/Board?SUBJECT=tabletennis&TEAM=0">1:1 경기</a></li>
        <li><a href="/cukbm/Board?SUBJECT=basketball&TEAM=1">팀경기</a></li>
        <li class="nav-header">ESPORTS</li>
        <li><a href="/cukbm/Board?SUBJECT=esports&TEAM=0">1:1 경기</a></li>
        <li><a href="/cukbm/Board?SUBJECT=esports&TEAM=1">팀경기</a></li>
        <li class="nav-header">BADMINTON</li>
        <li><a href="/cukbm/Board?SUBJECT=badminton&TEAM=0">1:1 경기</a></li>
        <li><a href="/cukbm/Board?SUBJECT=badminton&TEAM=1">팀경기</a></li>
        <li class="nav-header">FREE</li>
        <li><a href="/cukbm/Board?SUBJECT=free">자유게시판</a></li>
      </ul>
    </aside>
    
    <!--Body content-->
    <section class="well span9 ">
    	<c:choose>
		<c:when test="${param.result==1}"> 
			<div class="result">
			매칭 신청이 완료되었습니다.
			</div>
		</c:when>
		<c:when test="${param.result==2}"> 
			<div class="result">
			매칭 신청을 취소하였습니다.
			</div>
		</c:when>
		<c:otherwise>
			<div class="result">
			방 마감, 참여인원 제한등의 이유로 매칭 신청에 실패하였습니다<br>다른 매칭을 찾아보세요
			</div>
		</c:otherwise>
	</c:choose>				
    	
    </section>  
  </div>
</div>
</body>
</html>