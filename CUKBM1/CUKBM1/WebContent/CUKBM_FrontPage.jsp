<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<script>
	function hover1(element) {
	  element.setAttribute('src', 'img/front/liverpool.jpg');
	}

	function unhover1(element) {
	  element.setAttribute('src', 'img/front/soccer.jpg');
	}
	function hover2(element) {
		  element.setAttribute('src', 'img/front/nba.jpg');
		}

	function unhover2(element) {
		  element.setAttribute('src', 'img/front/basketball.jpg');
		}
	function hover3(element) {
			  element.setAttribute('src', 'img/front/ttcrew.PNG');
			}

	function unhover3(element) {
			  element.setAttribute('src', 'img/front/tabletennis.jpg');
			}
	function hover4(element) {
		  element.setAttribute('src', 'img/front/esports.jpg');
		}

	function unhover4(element) {
		  element.setAttribute('src', 'img/front/lol.jpg');
		}
	function hover5(element) {
		  element.setAttribute('src', 'img/front/badminton3.jpg');
		}
	function unhover5(element) {
		  element.setAttribute('src', 'img/front/badminton.jpg');
		}
</script>
<meta charset="EUC-KR">
<title>Welcome to CUKBM</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');
@import url('https://fonts.googleapis.com/css?family=Sarpanch:900');
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
  height: 100vh;
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
  top: 100vh;
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
  	font-size: 420%;
  	text-align: center;
 	line-height: 1;
 	padding-top: 180px;
 	display: block;
  	font-weight: 400;
  	color: #fff;
  	letter-spacing: 2px;
}
div.logo_start{
	margin: 0;
  	font-size: 320%;
  	text-align: center;
 	line-height: 1;
 	padding-top: 6px;
 	display: block;
  	font-weight: 400;
	margin-top: 50px;
	letter-spacing: 2px;
	
}

div.logo_start a{
	color: white;
	text-decoration: none;
	padding : 4px;
	border: 3px solid white;
}

div.logo_start a:hover{
	color: white;
	border: none;
}
article.mpic{
  width: 700px;
  text-align: center;
  border: 1px solid #ccc;
  box-shadow: 2px 2px 6px 0px  rgba(0,0,0,0.3);
}
article.mpic img {
  max-width: 100%;
}
div.text{
	text-align: left;
	padding-left: 60px; 
}
div.go {	
  background: gray;
  border: 0;
  color: white;
  padding: 8px;
  width: 55%;
  font-size: 18px;
  text-align: center;
  margin-bottom:20px;
  }
  div.go a{
  	text-decoration: none;
  	color: white;
  }
  div.text p{
  	font-size: 21px;
  }
  h1.tt {
  transform: skew(-12 deg) rotate(-12 deg);
  grid-area: text;
  font-family: 'Sarpanch', sans-serif;
  font-size: 5em;
  padding-left: 235px;
  color: #1d9099;
  text-shadow: 0.7vmin 0.7vmin 0 #E79C10, -0.7vmin -0.7vmin 0 #D53A33;
}
  
</style>
</head>
<body>
	<section>
		<div class="logo">
			<img src="img/logo.png" width="300" height="210"/><br>
  			<span>BIG MATCH</span><br> 	
  		</div><br><br>
  		<hr><br><hr>
  		<div class="logo_start">
  			<a href="#main">START</a>
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
			<a href="myPage">MYPAGE</a>
			<a href="logout">LOGOUT</a>		
		</c:otherwise>
	</c:choose>									
  </nav>
</header>
<article id="main">
	<h1 class="tt">Find Players!</h1>
  <div class="">  
  <article class="mpic">
    <img src="img/front/soccer.jpg" width="480px" height="330" onmouseover="hover1(this);" onmouseout="unhover1(this);">
    <div class="text">
      <h3>SOCCER</h3>
      <p>����� ��������</p>
      <div class="go"><a href="Board?SUBJECT=soccer&TEAM=0">1:1 MATCH</a></div>
      <div class="go"><a href="Board?SUBJECT=soccer&TEAM=1">TEAM MATCH</a></div>
    </div>
  </article>
  
  <article class="mpic">
    <img src="img/front/basketball.jpg" width="480px" height="330" onmouseover="hover2(this);" onmouseout="unhover2(this);">
    <div class="text">
      <h3>BASKETBALL</h3>
      <p>����� ��������</p>
      <div class="go"><a href="Board?SUBJECT=basketball&TEAM=0">1:1 MATCH</a></div>
      <div class="go"><a href="Board?SUBJECT=basketball&TEAM=1">TEAM MATCH</a></div>
    </div>
  </article>
  
  <article class="mpic">
     <img src="img/front/tabletennis.jpg" width="480px" height="330" onmouseover="hover3(this);" onmouseout="unhover3(this);">
    <div class="text">
      <h3>TABLE TENNIS</h3>
      <p>����� ��������</p>
      <div class="go"><a href="Board?SUBJECT=tabletennisl&TEAM=0">1:1 MATCH</a></div>
      <div class="go"><a href="Board?SUBJECT=tabletennis&TEAM=1">TEAM MATCH</a></div>
    </div>
  </article>
  
  <article class="mpic">
     <img src="img/front/lol.jpg" width="480px" height="330" onmouseover="hover4(this);" onmouseout="unhover4(this);">
    <div class="text">
      <h3>ESPORTS</h3>
      <p>����� ��������</p>
      <div class="go"><a href="Board?SUBJECT=esports&TEAM=0">1:1 MATCH</a></div>
      <div class="go"><a href="Board?SUBJECT=esports&TEAM=1">TEAM MATCH</a></div>
    </div>
  </article>
  
  <article class="mpic">
     <img src="img/front/badminton.jpg" width="480px" height="330" onmouseover="hover5(this);" onmouseout="unhover5(this);">
    <div class="text">
      <h3>BADMINTON</h3>
      <p>����� ��������</p>
      <div class="go"><a href="Board?SUBJECT=badminton&TEAM=0">1:1 MATCH</a></div>
      <div class="go"><a href="Board?SUBJECT=badminton&TEAM=1">TEAM MATCH</a></div>
    </div>
  </article>
  
	<article class="mpic">
     <img src="img/front/free3.jpg" width="480px" height="330">
    <div class="text">
      <h3>�����Խ���</h3>
      <p>����� ��������</p>
      <div class="go"><a href="Board?SUBJECT=free">Lets' Start!</a></div>
    </div>
  </article>
  </div>
</article>

</body>
</html>