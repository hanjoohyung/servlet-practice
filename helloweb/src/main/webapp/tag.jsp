<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>
	
	<table border ='1', cellspacing ='0', cellpadding='10'>
		<tr>
			<th>글 번호</th>
			<th>글 제목</th>
			<th>작성자</th>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>둘리</td>
		</tr>
		<tr>
			<td>2</td>
			<td>안녕</td>
			<td>마이콜</td>
		</tr>
	</table>
	</br>
	<img src='/helloweb/assets/images/dokgo.png' style="width:150px; border:1px solid #999"/>
	</br>
	<img src='assets/images/dokgo.png' style="width:150px; border:1px solid #999"/>
	<br/>
	<a href="form.jsp">폼으로 가기</a>
	<a href="/helloweb/hello.jsp">hello</a>
	<p>
	10월 07, 2021 3:10:14 오후 org.apache.catalina.core.StandardEngine startInternal
	정보: 서버 엔진을 시작합니다: [Apache Tomcat/8.5.71]</br>
	10월 07, 2021 3:10:14 오후 org.apache.coyote.AbstractProtocol start</br>
	정보: 프로토콜 핸들러 ["http-nio-8080"]을(를) 시작합니다.</br>
	10월 07, 2021 3:10:14 오후 org.apache.catalina.startup.Catalina start</br>
	</p>
</body>
</html>