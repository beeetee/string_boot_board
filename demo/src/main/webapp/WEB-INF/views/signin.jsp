<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ȸ������ �Ϸ�</title>
</head>
<body>
	<h1>ȸ������</h1>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		
		out.println(name);
	%>
</body>
</html>