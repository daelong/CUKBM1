<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>WELCOME</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');
@import url('https://fonts.googleapis.com/css?family=Erica+One&display=swap');
* {
  box-sizing: border-box;
  text-rendering: optimizeLegibility;
  font-kerning: auto;
}
html {
  font-size: 10pt;
  line-height: 1.4;
  font-weight: 400;
  font-family: 'Source Sans Pro', 'Open Sans', Roboto, 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', 'Myriad Pro', 'Segoe UI', Myriad, Helvetica, 'Lucida Grande', 'DejaVu Sans Condensed', 'Liberation Sans', 'Nimbus Sans L', Tahoma, Geneva, Arial, sans-serif;
}
body {
  margin: 0;
  background: #eee;
}
section {
  height: 30vh;
  background-image: url("img/front/pic6_1.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  font-family: 'Passion One', cursive;
}
header {
  width: 100%;
  padding: 1em;
  font-size: 140%;
  position: absolute;
  top: 30vh;
  left: 0;
  transition: opacity .2s ease-in-out;
  text-align: center;
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
}
article {
  margin: 5em auto 0;
  padding: 1em;
  font-size: 140%;
  max-width: 1200px;
  background: white;
  box-shadow: rgba(0,0,0,.05) 0 3px 15px;
}

@media (min-width: 500px) {
  header {
    text-align: left;
  }
  nav {
    float: right;
  }
  article {
    margin: 3.5em auto 0;
    padding: 2em;
  }
}
@media (min-width: 800px) {
  article {
    margin: 3.5em auto;
  }
}

div.logo{
	margin: 0;
  	font-size: 600%;
  	text-align: center;
 	line-height: 1;
 	padding-top: 80px;
 	display: block;
  	font-weight: 400;
  	color: #fff;
  	letter-spacing: 4px;
}
div.login{
	position: relative;
	margin-left: 450px;
}

div.info_fail{
	width: 300px;
	padding-bottom: 40px;
	text-align: center;
	margin-left: -30px;
}
div.et{
	height: 150px;
}
td.info_go{
	text-align: center;
	background:black;
	color:white;
	font-size: 20px;
	font-weight: 400;
	border-radius: 10px;
	border: 1.5px solid black;
	cursor:pointer;
	vertical-align: middle;
	opacity:0.8;
	margin-top: 50px;
	height:40px;
}
div.info_go_fail{
	position:relative;
	right: 20%;
	text-align: center;
	background:black;
	color:white;
	font-size: 20px;
	font-weight: 400;
	border-radius: 10px;
	border: 1.5px solid black;
	cursor:pointer;
	display:table-cell;
	vertical-align: middle;
	opacity:0.8;
	height:40px;
	width: 300px;
}

td.info_go a, div.info_go_fail a{
	color: white;
	text-decoration: none;
}
td.info_go:hover, div.info_go_fail:hover{
	background-color:#FFAB00;
	opacity: 0.7;
	border: 1.5px solid white;
}
div.info_inner{
	padding-left: 30px;
}
table.welcome{
	position:relative;
	right: 5%;
	text-align: center;
	color:#474747;
	
}
table.welcome td.text1{
	padding-bottom: 20px;
	font-size: 55px;
	color: #707070; 
	font-family: 'Erica One'; 
	text-shadow: -.030em .030em #EEEEE
}
table.welcome td.text2{
	padding-top: 25px;
	border-bottom: 2px solid #606060;
	font-size: 40px;
	color: #606060; 
	font-weight:700;
}
</style>
</head>
<body>
	<section>
		<div class="logo">
  			<span>CUKBM</span><br> 	
  		</div>		
	</section>
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
			<a href="">MYPAGE</a>
			<a href="logout">LOGOUT</a>		
		</c:otherwise>
	</c:choose>		
  </nav>
</header>
<article>
	<div class="login">		
			<c:choose>
				<c:when test = "${param.LOGIN_RESULT=='SUCCESS'}">	
				<br><br>
				<table class="welcome">
					<tr><td class="text1">WELCOME!</td></tr>
					<tr><td><img src="${sessionScope.LOGIN_IMG}" width="180" height="180"></td></tr>
					<tr><td class="text2">${sessionScope.LOGIN_ID}님</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td class="info_go"><a href="myPage">GO TO MYPAGE</a></td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td class="info_go"><a href="CUKBM_FrontPage.jsp">HOME</a></td></tr>
				</table>		
				<br><br>	
				</c:when>
				<c:otherwise>
					<br><br><br><br>
						<div class="info_fail">
						로그인에 실패했습니다 <br><br>
						아이디와 패스워드를 체크하세요!
						</div><br>
						<div class="info_inner">
							<div class="info_go_fail">
							<a href="Login.jsp">LOGIN</a>
							</div><br>
							<div class="info_go_fail">
							<a href="Agreement.jsp">JOIN MEMBER</a>
							</div>
						</div>
				</c:otherwise>
			</c:choose>
		</div>	
		<div class="et"></div>	
</article>
</body>
</html>