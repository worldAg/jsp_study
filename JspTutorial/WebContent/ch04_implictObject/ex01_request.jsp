<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>request 내장 객체</h1>
	<h3>request 내장 객체를 이용하여 폼(form) 페이지로부터 아이디와 비밀번호를 전송받아 출력하기</h3>
	<form action="ex01_request_process.jsp" method="post">
		<p>아 이 디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="pwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>