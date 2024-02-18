<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>response 내장 객체</h1>
	<h3>response 내장 객체로 응답 콘텐츠 설정하기</h3>
	<%-- 응답 콘텐츠 관련 메서드
		• setContentType(String type) : 웹 브라우저에 응답할 MIME 유형 설정
		• getContentType() : 웹 브라우저에 응답할 MIME 유형을 가져옴
		• setCharacterEncoding(String charset) : 웹 브라우저에 응답할 문자 인코딩 설정
		• getCharacterEncoding() : 웹 브라우저에 응답할 문자 인코딩을 가져옴
		• sendError(int status_code, String message) : 웹 브라우저에 응답할 오류(코드 및 오류 메시지)를 설정
		• setStatus(int statuscode) : 웹 브라우저에 응답할 HTTP 코드 설정
	--%>
	<%
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
	%>
	문자 인코딩 : <%=response.getCharacterEncoding()%><br />
	콘텐츠 유형 : <%=response.getContentType()%>
</body>
</html>