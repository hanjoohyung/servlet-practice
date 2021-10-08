<%@page import="guestbook01.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page import="guestbook01.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
GuestbookDao dao = new GuestbookDao();
List<GuestbookVo> list = dao.findAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="add.jsp" method="post">
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
			<td><a href="deleteform.jsp?no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>

		</tr>
		<%
		}
		%>
	</table>
</body>
</html>