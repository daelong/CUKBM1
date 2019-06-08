<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function writeChk(){
		if(document.write.title.value==''){
			alert("글 제목을 입력하세요");
			return false;
		}
		else if(document.write.attend.value==''){
			alert("참여 가능 인원을 입력하세요");
			return false;
		}
		else if(document.write.content.value==''){
			alert("글 내용을 입력하세요");
			return false;
		}
		else{
			return true;
		}
	}
</script>
<meta charset="EUC-KR">
<title>게시판 - 개인</title>
<style>
	@import url('https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css');
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
li.nav-header{
	font-size:13px;
}
div.write{
	color: #6b6a65; 
	font-family: 'Comfortaa'; 
	text-shadow: -.030em .030em #FFF6E6, -.08em .08em #E7DCD7;
	text-align: center;
	font-size:35px;
	font-weight:600;
	padding: 40px;
}
table.main{
	font-size:17px;
}
td{
	padding-left: 140px;
	padding-right: 20px;
	padding-bottom:10px;	
}
td.tag{
	text-align:left;
}
td.ct{
	padding-left: 20px;
}
td.tarea{
	padding-left: 140px;
	padding-right: 20px;
}
textarea{
	resize:none;
	width: 500px;
}
input[type=text]{
	width:330px;
	background-color: #EEEEEE;
	padding: 5px;
}
input[type=number]{
	padding:5px;
}
div.input_wrap{
	position:relative;
	left:42%;
}
input[type=submit], input[type=reset]{
	width: 70px;
	height:30px;
	border-radius:5px;
	background:#ffc839;
	color:white;
	border:none;
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
      <div class="write">MATCH</div><br>
      <form name="write" action=BoardWriter method=post onSubmit="return writeChk();">
      <table class="main">
      <tr><td class="tag">제목</td><td class="ct"><input type=text name=title></td></tr>
      <tr><td class="tag">작성자</td><td class="ct">${sessionScope.LOGIN_ID}님</td></tr>
      <tr>
      	<td class="tag">카테고리</td>
      	<td class="ct">
      		<select name="subject" size="1">
                     <option value="soccer">축구 게시판</option>
                     <option value="basketball">농구 게시판</option>
                     <option value="tabletennis">탁구 게시판</option>
                     <option value="badminton">배드민턴 게시판</option>
                     <option value="esports">e-sports 게시판</option>
                     <option value="free">자유 게시판</option>
            </select><br>
      	</td>
      </tr>
      <tr><td class="tag">참여 가능 인원</td><td class="ct"><input type=number name=attend value=2 readonly>명</td></tr>
      <tr><td colspan='2' class="tarea"><textarea cols=300= rows=20 name=content></textarea></td></tr>
	  </table>
      <input type=hidden name=team value=0>
      <input type=hidden name=min value=1>
      <br>
      <div class="input_wrap">
      	<input type=submit value='저장'>
      <input type=reset value='취소'>        
      </div>    
       </form>   
     </section> 
  </div>
</div>
</body>
</html>