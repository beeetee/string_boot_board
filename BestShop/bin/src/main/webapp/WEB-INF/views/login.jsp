<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script>
function login_button() {
	alert("login �Ϸ�");
}
</script>

<html lang = "ko"/>
	<head>
		<title>Beautycloset</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
		<meta name="viewport" content="width=1260" user-scalable="yes"/>
		<meta name="description" content="�Ƹ��ٿ��� �����ϴ� ��� ������ �θ�, ��ƼŬ����"/>
		<meta name="keywords" content="�����Ƿ�, �����Ƿ�, ����, ����, ����, �Ź�, �Ǽ��縮, �м�"/>
		<meta property="og:type" content="website"/>
		<meta property="og:title" content="beautycloset"/>
		<link rel="stylesheet" href="../css/formain.css" type="text/css"/>
		<link rel="stylesheet" href="" type="text/css"/>
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
		<link rel="stylesheet" href="" type="text/css">
	</head>
	<body>
		<header>
			<div><h1 class="header"><a href="main.html">Beautycloset</a></h1></div>
			<div class="menu">
				<nav class="navbar">
					<a href="top.html">Top</a>
					<a href="bottom.html">Bottom</a>
					<a href="bags.html">Bags&Shoes</a>
					<a href="acce.html">Accesories</a>
					<a href="signin.html">Singin</a>
					<a href="login.html">Login</a>
					<a href="q&a.html">Q&A</a>
					<a href="review.html">Review</a>
				</nav>
			</div>
		</header>
	<section>
		<form action="<%= request.getContextPath() %>/" method="post"> <!-- onsubmit="return LoginComplete();" -->
			<!-- action : ������ JSP ������, method : post�� �ش� ����Ʈ���� �ٸ� �������� ������ ������ ���--
				onsubmit : ���� ��ư�� �������� LoginComplete ��� ����(��ȯ)-->
			<fieldset>
				<legend class="login"><b>�α���</b></legend>
				<input type="hidden" name="loginhid" value=""/>
				<div class="logininfo" align=center>���̵�  <input type="text" name="loginid" placeholder="���̵� �Է��ϼ���"></div>
				<br>
				<div class="logininfo2" align=center>��й�ȣ <input type="password" name="loginpwd" placeholder="��й�ȣ�� �Է��ϼ���"></div>
				<div class="loginok" align=center><input type="submit" name="loginok" value="�α���" onclick="login_button()">
				<!--�α��� ��ư-->
				<div class="loginreset" align=center><input type="reset" name="loginreset" value="�ʱ�ȭ" onclick="">
				<!--�ʱ�ȭ ��ư : �����⸸ �ϸ� �ڵ����� �� ���� �ʱ�ȭ-->
			</fieldset>
		</form>
		<form action="" method="post">
			<fieldset>
				<legend class="loginforgot"><b>���̵� & ��й�ȣ ã��</b></legend>
				<div class="findid" align=center><input type="button" name="findid" value="���̵� ã��" onclick=""></div>
				<!--���̵� ã�� ��ư : ������ ���̵� ã�� �������� �̵�-->
				<br>
				<div class="findpwd" align=center><input type="button" name="findpwd" value="��й�ȣ ã��" onclick=""></div>
				<!--�н����� ã�� ��ư : ������ �н����� ã�� �������� �̵�-->
			</fieldset>
		</form>
	</section>
	<footer class="bottom">
			<div class="bottom">
				<p id="contact">Contact Us<p>
				<p>Tel. : 010-4022-3241</p>
				<p>E-mail : wsm91@naver.com</p>
				<p>Address : ����Ư���� ���α� ���ε� �����з�34�� 43</p>
				<p>@Copyright 2020 KITRI 20�� ħ�ش��� 2��</p>
				<p>All rights reserved</p>
			</div>
		</footer>
	</body>
</html>