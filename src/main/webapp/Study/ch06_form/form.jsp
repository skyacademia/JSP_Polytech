<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="processAll.jsp" method="get">
		<div>
			아이디 : <input type="text" name="id">
			<button type="button">아이디 중복 검사</button>
		</div>
		<br>
    	<div>
    		비밀번호 : <input type="password" name="pw">
    	</div>
    	<br>
    	<div>
    		이름 : <input type="text" name="name">
    	</div>
    	<br>
    	<div>
    		<select name="phone1">
		        <option value="010">010</option>
		        <option value="011">011</option>
		        <option value="016">016</option>
		        <option value="017">017</option>
		        <option value="018">018</option>
	    	</select>
			    - <input type="text" maxlength="4" size="4" name="phone2">
			    - <input type="text" maxlength="4" size="4" name="phone3">
    	</div>
	    <br>
	    <div>
	    	성별 : 
	        <input type="radio" name = "sex" value="남성">
	        <label for="html">남성</label>
	        <input type="radio" name = "sex" value="여성">
	        <label for="css">여성</label>
	    </div>
		<br>
		<div>
			취미 : 
		    <input type="checkbox" id="reading" name="hobby" value="독서">
		    <label for="reading">책</label>    
		    <input type="checkbox" id="excersice" name="hobby" value="운동">
		    <label for="excersice">운동</label>    
		    <input type="checkbox" id="movie" name="hobby" value="영화">
		    <label for="movie">영화</label>
		</div>
	    <br>
	    <div>
	    	<textarea name = "comment" rows="3" cols="30" placeholder="가입 인사를 입력해주세요"></textarea>
	    </div>
		<br>
		<input type="submit" value="가입하기">
		<input type="reset" value="다시쓰기">
	</form>
</body>
</html>