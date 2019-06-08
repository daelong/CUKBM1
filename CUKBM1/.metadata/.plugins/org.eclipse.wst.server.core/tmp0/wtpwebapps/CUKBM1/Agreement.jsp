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
			alert("�̿� ����� �����ϼž� �մϴ�.")
	}
	function nocheck(){
		alert("�������� ������ �����Ͻ� �� �����ϴ�.")
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
			 	 		<input type="checkbox" name="req"> ��ü ����� �����մϴ�.<br><br>
			 	 		<input type="button" value="����" onclick="check()"/>&nbsp;&nbsp;&nbsp;
   		 				<input type="button" value="���Ǿ���" onclick="nocheck()"/>
			 	 	</td>
			 	 </tr>	 
			 	 </tfoot>
			<tbody>
			 <tr><th class="ft">[�ʼ�] �̿� ��� ����</th></tr>
			 <tr>
			 	<td>
			 	<p class="pinfo">
			 	 �� ȸ�������� �� ����Ʈ�� ��� ���ؼ��� ���˴ϴ�.<br>
			 	 �� �� ����Ʈ�� ���� ��� �����ϴ� ȸ���� Ż�� ó���մϴ�.<br>
			 	 </p>
			 	</td>
			 </tr>
			 <tr><th class="ft">[�ʼ�] �������� ���� �� �̿� ����</th></tr>
			 <tr>
			 	<td>
			 	 <p class="pinfo">
			 	 �� ���������� ���� �� �̿����<br>
				�� ����Ʈ�� ������ ���������� ������ ������ ���� Ȱ���մϴ�.<br>
				�� ���� ������ ���� ��� ����<br>
				�� ȸ�� ����<br>
				ȸ���� ���� �̿뿡 ���� ����Ȯ�� , ���� �ĺ� , ����Ȯ�� , �������� ����<br>
				�� ������ �� ���� Ȱ��<br>
				���� �� �ľ� �Ǵ� ȸ���� ���� �̿뿡 ���� ���<br><br>
				�� ���������� ���� �� �̿�Ⱓ<br>
				ȸ��� �������� ���� �� �̿������ �޼��� �Ŀ��� ���� ���� �ش� ������ ��ü ���� �ı��մϴ�.<br><br>
				�� ���������� ��3�� ������ ���� ����<br>
				�� ����Ʈ�� ������ü�� ����, ������ Ư���� ���� �� �������� ��ȣ�� ��17�� �� ��18���� �ش��ϴ� ��쿡�� ���������� ��3�ڿ��� �����մϴ�.<br>
				o �����޴� ���� �������� �̿����<br>
				�α���ID, �������, �޴���ȭ��ȣ, ���� �̿� ���, �а�, ����
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