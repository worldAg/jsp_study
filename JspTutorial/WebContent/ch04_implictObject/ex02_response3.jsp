<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>response 내장 객체</h1>
	<h3>이 페이지는 5초마다 새로고침 됩니다.</h3>
	<%
		response.setIntHeader("Refresh", 5);
	%>
	<p><%=(new java.util.Date())%></p>
</body>
</html>