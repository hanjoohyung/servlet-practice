<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String no = (String)request.getAttribute("no");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook02/db?a=delete&no=<%=no %>" method="post">
		<input type ='hidden' name ="a" value="delete">
		<input type='hidden' name="no" value=""> 
		비밀번호 : <input type="password" name="password"> 
		<input type="submit" value="확인">
	</form>
	<br>
	<a href="/guestbook02/db">메인으로 돌아가기</a>
</body>
</html>