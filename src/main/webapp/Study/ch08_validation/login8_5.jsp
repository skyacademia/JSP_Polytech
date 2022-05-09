<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사(Validation)</title>
</head>
<script type="text/javascript">

	function checkMember(){
		var ExId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var ExPw = /^[0-9]*$/;
		var ExName = /^[가-힣]*$/;
		var ExPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var ExEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var form = document.Member;
		
		var id = form.id.value;
		var pw = form.passwd.value;
		var name = form.name.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		var email = form.email.value;
		
		if(!ExId.test(id)){
			alert("아이디는 문자로 시작해야합니다.");
			form.id.select();
			return;
		}
		
		if(!ExPw.test(pw)){
			alert("비밀번호는 숫자만 입력해야합니다.");
			form.pw.select();
			return;
		}
		if(!ExName.test(name)){
			alert("이름은 한글만 입력해야합니다.");
			form.name.select();
			return;
		}
		if(!ExPhone.test(phone)){
			alert("연락처를 입력해야합니다.");
			form.phone.select();
			return;
		}
		if(!ExEmail.test(email)){
			alert("이메일를 입력해야합니다.");
			form.email.select();
			return;
		}
		
		form.submit();
	}
</script>
<body>
    <form name="Member" action="login8_5_process.jsp" method="post">
        <p>아이디 : <input type="text" name="id"></p>
        <p>비밀번호 : <input type="password" name="passwd"></p>
        <p>이름 : <input type="text" name="name"></p>
        <p>연락처 : 
        <select name="phone1">
	        <option value="010">010</option>
	        <option value="011">011</option>
	        <option value="016">016</option>
	        <option value="017">017</option>
	        <option value="019">019</option>
	    </select>
    	-<input type="text" maxlength="4" size="4" name="phone2">-<input type="text" maxlength="4" size="4" name="phone3"></p>
        <p>이메일 : <input type="text" name="email"></p>
        <p><input type="button" value="가입하기" onclick="checkMember()"></p>
    </form>
</body>
</html>