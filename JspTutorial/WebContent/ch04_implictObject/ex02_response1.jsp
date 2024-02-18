<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>response 내장 객체</h1>
	<h3>response 내장 객체로 페이지 이동</h3>
	<h4>로그인</h4>
	<form action="ex02_response1_process.jsp" method="post">
		<p>아 이 디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="pwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>