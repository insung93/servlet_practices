<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	
	<form action='./join.jsp'  method='post'>
	
		이메일 : <input type='text' name='email' value='' /> <br>
		
		비밀번호 : <input type='password' name='pwd' value='' /> <br>
		
		생년:
		<select name='birthYear'>
			<option value="1996">1996년</option>
			<option value="1996">1997년</option>
			<option value="1996">1998년</option>
		</select>
		<br>
		
		성별 :
		여<input type="radio" name='gender' value="female" />
		남<input type="radio" name='gender' value="male" checked='checked'/>
		<br>
		
		취미 : 
		코딩<input type="checkbox" name="hobby" value="coding" checked='checked'/>
		운동<input type="checkbox" name="hobby" value="excercise" checked='checked'/>
		수영<input type="checkbox" name="hobby" value="swim" />
		요리<input type="checkbox" name="hobby" value="cook" />
		<br>
		
		자기소개 : <br>
		<textarea name="profile">한줄에입력하기
		
		
		</textarea>
		<br>
		
		<br>
		<input type='submit' value='가입' />
	
	</form>
	<br>
	<br>
	<a href='/helloweb/tag.jsp'>태그연습</a>
</body>
</html>