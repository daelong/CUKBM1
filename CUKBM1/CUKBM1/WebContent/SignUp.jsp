<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function regi(){
		if(document.join.id.value==''){
			alert("���̵� �Է��ϼ���");
			document.join.id.focus();
		}
		else if(document.join.password.value==''){
			alert("��й�ȣ�� �Է��ϼ���");
			document.join.password.focus();
		}
		else if(document.join.major.value==''){
			alert("������ �Է��ϼ���");
			document.join.major.focus();
		}
		else if(document.join.age.value==''){
			alert("���̸� �Է��ϼ���");
			document.join.age.focus();
		}
		else if(document.join.phone.value==''){
			alert("�ڵ��� ��ȣ�� �Է��ϼ���");
			document.join.phone.focus();
		}
		else if(!(join.photo[0].checked||join.photo[2].checked||join.photo[3].checked
				||join.photo[4].checked||join.photo[5].checked||join.photo[6].checked
				||join.photo[7].checked||join.photo[8].checked||join.photo[1].checked)){
			alert("������ �����ϼ���");
		}
		else{
			document.join.submit();
			return true;
		}
	}
</script>
<meta charset="EUC-KR">
<title>SingUpForm</title>
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
}
div.et{
	height: 150px;
}
input[type=text], input[type=password],select{
	border-color: #efd27f;
	border-width: 2px;
	border-style: none none solid none;
	padding-left: 10px;
	height: 30px;
	color: #444444;
	font-size:16px;
	}
td.tag{
	text-align: right;
	color: #444444;
	padding: 10px 30px;
	letter-spacing:1.5px;
}
td.t_text{
	text-align: center;
}
span.max{
	font-size: 14px;
	letter-spacing:1px;
	color: #7e7353;
	padding-left: 16px;
}
table.first{
	position:relative;
	left: 28%;
}
table.second{
	position:relative;
	left: 30%;
	color: #444444;
}
td.t_text{
	height: 100px;
}
td.t_text div{
	background-color:#fee7a8;
	width: 280px;
	height: 30px;
	border-radius: 20px;
	display:table-cell;
	vertical-align: middle;
	position:relative;
	left:30%;
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
	position:relative;
	left: 45%;
}
input[type=submit]:hover{
	background-color:#FFAB00;
	opacity: 0.7;
	border: 1.5px solid white;
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
	<form name="join" action="signUp" method="post" onSubmit="regi();return false">
		<table class="first">
			<tbody>
				<tr><td class="tag">���̵�</td><td class="t"><input type=text name="id" maxlength=16><span class="max">(�ִ� 16��)</span></td></tr>
				<tr><td class="tag">�н�����</td><td class="t"><input type=password name="password" maxlength=16><span class="max">(�ִ� 16��)</span></td></tr>
				<tr>
					<td class="tag">�а�</td>
					<td class="t">
						<select name="major" size="1">
							<option value="�濵�к�">�濵�к�</option>
							<option value="�����к�">�����к�</option>
							<option value="���ƽþƾ�ȭ�к�">���ƽþƾ�ȭ�к�</option>
							<option value="�̵�����������а�">�̵�����������а�</option>
							<option value="�������к�">�������к�</option>
							<option value="��ȸ���к�">��ȸ���к�</option>
							<option value="����ȯ���к�">����ȯ���к�</option>
							<option value="��Ȱ���к�">��Ȱ���к�</option>
							<option value="������к�">������к�</option>
							<option value="���ǰ�">���ǰ�</option>
							<option value="�ι��к�">�ι��к�</option>
							<option value="�ڿ����к�">�ڿ����к�</option>
							<option value="����������ڰ��к�">����������ڰ��к�</option>
							<option value="�����а�">�����а�</option>
							<option value="��ǻ���������к�">��ǻ���������к�</option>
							<option value="Ư��������">Ư��������</option>
							<option value="�������ȭ�а�">�������ȭ�а�</option>
						</select>
					</td>
				</tr>
				<tr><td class="tag">����</td><td class="t"><input type=text name="age" maxlength=2><span class="max">��</span></td></tr>
				<tr><td class="tag">�ڵ��� ��ȣ</td><td class="t"><input type=text name="phone" maxlength=13 placeholder="010-xxxx-xxxx-"><span class="max">('-'�� ������ �Է����ּ���)</span></td></tr>
			</tbody>
		</table>
		<br><br>
		<table class="second">
			<tbody>
				<tr><td class="t_text"><div>������ ������ �����ϼ���</div></td></tr>
				<tr>
					<td class="t_pic">
						<img src="img/icon/man1.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man1">
						<img src="img/icon/man2.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man2">
						<img src="img/icon/man3.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man3"><br>
						<img src="img/icon/man4.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man4">
						<img src="img/icon/man5.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man5">
						<img src="img/icon/man6.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man6"><br>
						<img src="img/icon/man7.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man7">
						<img src="img/icon/man8.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man8">
						<img src="img/icon/man9.jpg" width="130" height="130">
						<input type="radio" name="photo" value="man9"><br>
					</td>
				</tr>
			</tbody>
		</table>
		<br><br><br>
		<input type="submit" value="ȸ������">	
		</form>		
	</div>
		<div class="et"></div>	
</article>
</body>
</html>