<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join.jsp" method="post">
		I  D : <input type="text" name="email" />
		<br/></br>
		PW : <input type="password" name="password" />
		<br/></br>
		
		생년 :
		<select name="birthYear">
			<option value="1997">1997년</option>
			<option value="1998">1998년</option>
			<option value="1999">1999년</option>
		</select>
		<br/></br>
		
		성별 :
		남 : <input type="radio" name="gender" value="M" />
		여 : <input type="radio" name="gender" value="F" checked="checked"/>
		<br/></br>
		
		취미 :
		코딩 <input type="checkbox" name="hobby" value="coding" />
		술먹기 <input type="checkbox" name="hobby" value="drinking" />
		요리 <input type="checkbox" name="hobby" value="cooking" />
		수영 <input type="checkbox" name="hobby" value="swimming" />
		<br/></br>
		
		<input type="submit" value="회원가입"/>
	</form>
</body>
</html>