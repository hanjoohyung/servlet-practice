<%@page import="guestbook01.vo.GuestbookVo"%>
<%@page import="guestbook01.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String no = request.getParameter("no");
String name = request.getParameter("name");
String password = request.getParameter("password");
String message = request.getParameter("message");
String reg_date = request.getParameter("reg_date");

	GuestbookVo vo = new GuestbookVo();
	
	Integer a = Integer.parseInt(no);
	long y = a.longValue();
	vo.setNo(y);
	vo.setPassword(password);

	new GuestbookDao().delete(vo);
	
	response.sendRedirect("/guestbook01");
%>


