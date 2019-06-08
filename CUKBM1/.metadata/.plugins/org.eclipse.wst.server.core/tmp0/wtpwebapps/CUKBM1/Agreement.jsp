<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function check(){
		var req = document.form.req.checked;
		var num=0;
		if(req==true) num=1;
		if(num==1)
			document.form.submit();
		else
			alert("이용 약관에 동의하셔야 합니다.")
	}
	function nocheck(){
		alert("동의하지 않으면 가입하실 수 없습니다.")
		location.href="Agreement.jsp;"
	}
</script>
<meta charset="EUC-KR">
<title>AgreementForm</title>
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
div.join{
	position: relative;
	
}
div.title{
	font-weight: 400;
	font-size: 30px;
	text-align: center;
	margin-top: 100px;
	margin-bottom: 80px;
	opacity:0.8;
}

input[type=button]{
	width: 120px;
	height: 35px;
	background:black;
	color:white;
	font-size: 16px;
	border-radius: 10px;
	border: 1.5px solid black;
	cursor:pointer;
}
input[type=button]:hover{
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
table{
	    position: relative;
		width: 600px;
		border: 3px solid #6c6c6c;
		border-collapse: collapse;
		font-size: 14px;
		color: #424242;
		left: 24%;
	}
	td{
		border: 2px solid #6c6c6c;	
		height: 130px;
		padding: 10px 20px 0;
	}
	tfoot{
		text-align: center;
	}
	p.pinfo{
		height:130px;
		overflow:auto;
		line-height: 30px;
	}
	th.ft{
		height:30px;
		padding: 10px;
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
	<div class="title"><h2>Join Member</h2></div>
	<div class=join>
	<form action="SignUp.jsp" method="post" name="form">
		<table>
			 <tfoot>
			 	 <tr>
			 	 	<td>
			 	 		<input type="checkbox" name="req"> 전체 약관에 동의합니다.<br><br>
			 	 		<input type="button" value="동의" onclick="check()"/>&nbsp;&nbsp;&nbsp;
   		 				<input type="button" value="동의안함" onclick="nocheck()"/>
			 	 	</td>
			 	 </tr>	 
			 	 </tfoot>
			<tbody>
			 <tr><th class="ft">[필수] 이용 약관 동의</th></tr>
			 <tr>
			 	<td>
			 	<p class="pinfo">
			 	 ■ 회원정보는 웹 사이트의 운영을 위해서만 사용됩니다.<br>
			 	 ■ 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다.<br>
			 	 </p>
			 	</td>
			 </tr>
			 <tr><th class="ft">[필수] 개인정보 수집 및 이용 동의</th></tr>
			 <tr>
			 	<td>
			 	 <p class="pinfo">
			 	 ■ 개인정보의 수집 및 이용목적<br>
				본 사이트는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
				ο 서비스 제공에 관한 계약 이행<br>
				ο 회원 관리<br>
				회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 연령확인 , 고지사항 전달<br>
				ο 마케팅 및 광고에 활용<br>
				접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계<br><br>
				■ 개인정보의 보유 및 이용기간<br>
				회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.<br><br>
				■ 개인정보의 제3자 제공에 관한 사항<br>
				본 사이트는 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.<br>
				o 제공받는 자의 개인정보 이용목적<br>
				로그인ID, 생년월일, 휴대전화번호, 서비스 이용 기록, 학과, 나이
			 	 </p><br>		 	 		 	 
			 	</td>
			 </tr>	
			</tbody>
		</table>	
	</form>
	</div>
		<div class="et"></div>	
</article>
</body>
</html>