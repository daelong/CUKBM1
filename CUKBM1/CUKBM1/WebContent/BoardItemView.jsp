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
table.main_content{
	border: 2px solid #b0b0b0;
	color:#505050;
	margin: 30px 20px;
	font-size:16px;
}
table.main_Content tr, table.main_content td{
	border: 2px solid #b0b0b0;
	padding:5px;
}
td.first{
	width: 80px;
	background:#e7e7e6;
}
td.second{
	padding-left: 10px;
}
td.third{
	padding: 30px;
	width: 750px;
}
table.button{
	border:none;
	vertical-align:middle;
	float: right;
	margin-right: 45px;
}
input[type=submit]{
	text-align:center;
	border:none;
	border-radius:5px;
	font-size:14px;
	font-weight:600;
	background:#dadada;
	color:#5b5b5b;
	width: 80px;
	padding: 3px;
}
table.button div{
	text-align:center;
	border:none;
	border-radius:5px;
	font-size:14px;
	font-weight:600;
	background:#dadada;	
	width: 80px;
	padding: 3px;
	margin-top:-18px;
}
table.button div a{
	color:#d57e75;
	text-decoration:none;
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
		<table class="main_content">
		<tr><td class="first">제목</td><td class="second">${boardItem.title}</td></tr>
		<tr><td class="first">작성자</td><td class="second">${boardItem.writer}</td></tr>
		<tr><td class="first">작성일</td><td class="second">${boardItem.date}</td></tr>
		<tr><td colspan='2' class="third">${boardItem.content}</td></tr>
		</table>
		<table>
			<tr><td>참여자명단</td></tr>
			<c:forEach var="cnt" begin="0" end="${param.maxnum}">
			<tr>
				<td>
				${IDVO.idlist[cnt]}
				<a href="forcedExit?ID=${IDVO.idlist[cnt]}&&seqno=${param.SEQ_NO}">강퇴</a>
				<a href="">유저페이지</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	  	<table class="button"> 
	  		<tr>
	  		<c:choose>
				<c:when test="${param.ENTER==1}">
					<td>
	  				<form class="submit" action="AttendCancel?seqno=${param.SEQ_NO}" method=post>
						<input type='submit' value='참가취소'>
	  				</form>
	  			</td>
				</c:when>
				<c:otherwise>
					<td>
	  				<form class="submit" action="Attend?seqno=${param.SEQ_NO}" method=post>
						<input type='submit' value='참가신청'>
	  				</form>
	  				</td>
				</c:otherwise>
			</c:choose>			
	  			<td>
	  				<div>
	  				<a  href="#" onClick='window.open("like?seqno=${param.SEQ_NO}","like_list","width=400,height=150").focus()'>좋아요</a> 
	  				</div>
	  			</td>	  			
	  		</tr>
	  	</table>
    </section>  
  </div>
</div>
</body>
</html>