<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
			<form action="<%= request.getContextPath() %>/signin" method="post">
			<fieldset>
				<legend class="join">ȸ������</legend>
					<label for="name">�̸�</label>
					<input type="text" name="name" placeholder="�̸��� �Է��ϼ���"><br>
					<label for="sex">����</label>
					<input type="radio" name="man">����
					<input type="radio" name="woman">����<br>
					<label for="age">����</label>
					<input type="text" name="age" placeholder="�� ���̸� �Է��ϼ���"><br>
					<label for="phonenum">��ȭ��ȣ</label>
					<input type="tel" name="phone" placeholder="-���� �Է��ϼ���"><br>
					<label for="address">�� �ּ�</label>
					<input type="text" name="address" placeholder="��Ȯ�� �ּҸ� �Է��ϼ���"><br>
					<label for="emailadd">�̸��� �ּ�</label>
					<input type="email" name="email" placeholder="��ȿ�� �̸��� �ּҸ� �Է��ϼ���"><br>
					<label for="id">���̵�</label>
					<input type="text" name="ID" placeholder="���̵� �Է��ϼ���"><br>
					<label for="password">�н�����</label>
					<input type="password" name="pwd" placeholder="�н����带 �Է��ϼ���"><br>
			</fieldset>
			<fieldset>
				<legend class="addinfo">�ΰ�����</legend>
					<p><label for="items">�����ִ� ������</label>
					<input type="checkbox" name="likeit">����
					<input type="checkbox" name="likeit">����
					<input type="checkbox" name="likeit">����
					<input type="checkbox" name="likeit">�Ź�
					<input type="checkbox" name="likeit">�׼�����</p>
					<!--type=checkbox : ���� ���� ���ÿ� ������ �� ����-->
					<p><label for="agr">�������� ������ �����մϱ�?</label>
					<input type="radio" name="agree">��
					<input type="radio" name="agree">�ƴϿ�</p>
					<!--type=radio : ���� �� �� �ϳ��� ������ �� ����-->
					<p><label for="agr2">�̸���, ���� ���ſ� �����մϱ�?</label>
					<input type="radio" name="agree2">��
					<input type="radio" name="agree2">�ƴϿ�</p>
			</fieldset>
			<fieldset>
					<span><label for="name"><input type="submit" value="����"></label><br>
			  		<label for="name"><input type="reset" value="���� �ʱ�ȭ"></label></span>
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