<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process all</title>
<link href="table.css" type="text/css" rel="stylesheet">
</head>
<body>
	<table>
	<tr>
		<th>파라미터 이름</th>
		<th>파라미터 값</th>
	</tr>
	<%
		request.setCharacterEncoding("utf-8");
		Enumeration set = request.getParameterNames();
		while(set.hasMoreElements()){
			String name = (String) set.nextElement();
			out.print("<tr><td>"+name+"</td>\n");
			String value = request.getParameter(name);
			out.print("<td>"+value+"</td></tr>\n");		
		}
	%>
	</table>
	
</body>
</html>