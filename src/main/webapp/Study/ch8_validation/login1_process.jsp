<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<h3>로그인이 되었습니다.</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
	%>
	<p> 아이디 : <%=id %> </p>
	<p> 비밀번호 : <%=pw %> </p>
</body>
</html>