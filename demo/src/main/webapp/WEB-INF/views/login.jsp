<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.example.demo.board.controller.MemberController" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�α���</title>
</head>
<body>
	<h1>�α���</h1>
	<%
		String id = request.getParameter("loginid");
		String pwd = request.getParameter("loginpwd");
		
		out.println(id);
		out.println(pwd);
		
		String jdbcUrl="jdbc:mariadb://localhost:3306/testdb";
		String user = "root";
		String passwd = "1234";
		
		// JDBC ��������
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		

		// 1. ����̹� �ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. DB����
		conn = DriverManager.getConnection(jdbcUrl, user, passwd);
		// 3. id�� �ش��ϴ� passwd ��������
		String sql = "SELECT pwd FROM members WHERE id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		if (rs.next()) {
			System.out.println(rs.getString("pwd"));
			System.out.println(pwd);
			System.out.println(pwd.equals(rs.getString("pwd")));
			// ���̵�����
			if (pwd.equals(rs.getString("pwd"))) {
				System.out.println("Success");
				// �α������� main.jsp�� �̵�
				session.setAttribute("id", id);
				response.sendRedirect("main.html");
			} 
			else {
				%>
				<script>
					alert('�н����� Ʋ��');
					history.back();
				</script>		
				<%	
			}
		} else {
			// ���̵����  �ڷ��̵�
			%>
			<script>
				alert('���̵� ����');
				//location.href = 'loginForm.jsp';  // ������ ��û�� �޴´�.
				history.back();  // history.go(-1);  // ������ ��û���� ���������� ��ü������ ó��
			</script>
			<%
		}
	%>


	<form action="main.html" type="post">	 
	<button type="submit" class="btn btn-primary">ok</button>
</body>

</html>