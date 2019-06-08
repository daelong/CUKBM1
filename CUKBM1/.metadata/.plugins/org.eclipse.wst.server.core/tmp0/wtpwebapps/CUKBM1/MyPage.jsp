<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MYPAGE</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');
@import url('https://fonts.googleapis.com/css?family=Comfortaa&display=swap');
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
div.et{
	height: 150px;
}
div.out{
	position: relative;
	margin-left: 470px;
}
h3{
color: #445263; 
font-family: 'Comfortaa'; 
text-shadow: -.030em .030em #FFF6E6, -.08em .08em #E7DCD7;
font-size: 43px;
}

hr{
	height: 3px;
	background: black;
	opacity: 0.7;
}
table.myinfo{
	position:relative;
	right:10%;
}
td{
	font-weight:600;
	width: 260px;
	vertical-align:middle;
	color:#5a5958;
	padding: 5px 15px;
}

td.tag{
	border-bottom: 3px solid #f6d36f;
	background-color:white;
	text-align:center;
	font-weight:600;
	width:100px;
	font-size:17px;
	padding:5px 15px;
	color:#5a5958;
}
table.like{
	text-align : center;
	position:relative;
	right:20%;
}
td.like_title{
	width:500px;
	color:#FFAB91;
	font-family: 'Comfortaa'; 
text-shadow: -.030em .030em #FFF6E6, -.08em .08em #E7DCD7;
font-size: 35px;
	padding-top:30px;
	padding-bottom: 50px;
}
td.like_ct{
	background:#EFEBE9;
	padding-bottom:10px;
}
td.like_ct a{
	text-decoration:none;
	color:#5a5958;
}
td.like_ct:hover{
	background:#FFE082;
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
		<div>
		<br><br>
		<div class="out">		
		<h3>MY PAGE</h3>
		<hr style="margin-left: -200px; width:600px;"><br>
		<div class="inner">
			<img src="${sessionScope.LOGIN_IMG}" width="200" height="200"><br>
			<br>
			<table class="myinfo">
				<tr>
					<td class="tag">ID</td><td>${id}</td>
				</tr>
				<tr>
					<td class="tag">MAJOR</td><td>${major}</td>
				</tr>
				
				<tr>
					<td class="tag">AGE</td><td>${age}살</td>
				</tr>
				<tr>
					<td class="tag">PHONE</td><td>${phone}</td>
				</tr>
			</table>
			<br><hr style="width:600px; margin-left: -200px"><br>
			<table class="like">
				<tr>
					<td class="like_title">내 관심 게시글</td>
				</tr>
				<c:forEach var="cnt" begin="0" end="${Board_List.listSize-1}">
					<tr>
						<td class="like_ct"><a href="BoardItem?SEQ_NO=${Board_List.seqNo[cnt]}&SUBJECT=${Board_List.subject[cnt]}">${Board_List.title[cnt]}</a>
					</tr>
				</c:forEach>
			</table>
			
			
		</div>
	</div>
	</div>
		<div class="et"></div>	
</article>
</body>
</html>