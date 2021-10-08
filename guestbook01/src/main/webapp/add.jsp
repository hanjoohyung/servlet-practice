<%@page import="guestbook01.dao.GuestbookDao"%>
<%@page import="guestbook01.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String password = request.getParameter("password");
String message = request.getParameter("message");
String reg_date = request.getParameter("reg_date");

GuestbookVo vo = new GuestbookVo();
vo.setName(name);
vo.setPassword(password);
vo.setMessage(message);
vo.setReg_date(reg_date);

new GuestbookDao().insert(vo);

response.sendRedirect("/guestbook01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name:
	<input type="text" name="name" value="">
	<br> password:
	<input type="text" name="password" value="">
	<br> reg_date:
	<input type="text" name="reg_date" value="">
	<br> no :
	<input type="text" name="no" value="">
	<br> message:
	<input type="text" name="massgae" value="">
	<br>
</body>
</html>