<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>response 내장 객체</h1>
	<h3>response 내장 객체로 오류 응답 코드와 오류 메시지 보내기</h3>
	<%
		response.sendError(404, "요청 페이지를 찾을 수 없습니다.");
	%>
</body>
</html>