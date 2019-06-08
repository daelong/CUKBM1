<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');
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
	margin-left: 400px;
}
div.login_text{
	font-weight: 400;
	font-size: 150%;
	margin-top: 120px;
	margin-bottom: 30px;
}
input[type=text], input[type=password]{
	width: 280px;
	height: 30px;
	margin-bottom: 30px;
	border-radius: 10px;
	border: 1.5px solid black;
	font-size: 15px;
	color: #424242;
	padding-left: 10px;
	
}
input[type=password]{
	margin-bottom: 40px;
}
input:focus{
	outline:none;
}
input[type=submit]{
	width: 120px;
	height: 35px;
	background:black;
	color:white;
	font-size: 100%;
	border-radius: 10px;
	border: 1.5px solid black;
	cursor:pointer;
}
input[type=submit]:hover{
	background-color:#FFAB00;
	opacity: 0.7;
	border: 1.5px solid white;
}
a.join{
	margin-left: 16px;
	text-decoration: none;
	color: #FFAB00;
	font-weight: 700;
	font-size: 110%;
}
div.et{
	height: 150px;
}
}

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
    <a href="CUKBM_FrontPage.jsp">HOME</a>
	<a href="Login.jsp">LOGIN</a>
	<a href="Agreement.jsp">JOINUS</a>
  </nav>
</header>
<article>
	<div class="login">		
			<div class="login_text">ACCOUNT LOGIN</div>
			<form action="login" method=post>
				<div>
					<span>USERNAME</span><br>
					<input type="text" name=id size=12><br>
				</div>
				<div>
					<span>PASSWORD</span><br>
					<input type="password" name=password size=12><br>	
				</div>		
				<input type=submit value='LOGIN'>
				 	<a class="join" href="Agreement.jsp">JOIN MEMBER</a>				
			</form>	
		</div>	
		<div class="et"></div>	
</article>
</body>
</html>