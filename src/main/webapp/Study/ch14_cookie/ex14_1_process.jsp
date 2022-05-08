<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")){
			Cookie cookie_id = new Cookie("userId",user_id);
			Cookie cookie_pw = new Cookie("userPw",user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.print("쿠키 생성했습니다.<br>");
			out.print(user_id+"님 환영합니다");
		}
		else{
			out.print("쿠키 생성을 못했습니다.<br>");
		}
	%>
</body>
</html>