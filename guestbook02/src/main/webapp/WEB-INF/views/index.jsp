<%@page import="guestbook01.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook02/db?a=add" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
			<%
			for (GuestbookVo vo : list) {
			%>
		</table>
	</form>
	<br>
	<table width=600 border=2>
		<tr>
			<td><%=vo.getNo()%></td>
			<td>이름 : <%=vo.getName()%></td>
			<td>시간 :<%=vo.getReg_date()%></td>
			<td>메세지 : <%=vo.getMessage()%></td>
			<td><a href="/guestbook02/db?a=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>