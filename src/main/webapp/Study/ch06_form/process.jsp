<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login process</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby");
		String comment = request.getParameter("comment");
	%>
	아이디 : <%=id%>
	<br><br>
	비밀번호 : <%=pw%>
	<br><br> 
	이름 : <%=name%>
	<br><br>
	연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%>
	<br><br>
	성별 : <%=sex%>
	<br><br>
	취미 : <%
		if(hobby!=null){
			for(int i=0; i<hobby.length; i++){
				out.print(" "+hobby[i]);
			}
			out.println();
		}
	%>
	<br><br>
	인사말 : <%=comment%>
</body>
</html>