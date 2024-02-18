<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>response 내장 객체</h1>
	<h3>응답 HTTP 헤더에 정보 추가하기</h3>
	
	<%-- 응답 HTTP 헤더 관련 메서드
		• addCookie(Cookie cookie) : 쿠키 추가
		• addDateHeader(String name, long date) : 설정한 헤더 이름 name에 날짜/시간 추가
		• addHeader(String name, String value) : 설정한 헤더 이름 name에 value 추가
		• addIntHeader(String name, int value) : 설정한 헤더 이름 name에 정수 값 value 추가
		• setDateHeader(String name, long date) : 설정한 헤더 이름 name에 날짜/시간 설정
		• setHeader(String name, String value) : 설정한 헤더 이름 name에 문자열 값 value 설정
		• setIntHeader(String name, int value) : 설정한 헤더 이름 name에 정수 값 value 설정
		• containsHeader(String name) : 설정한 헤더 이름 name이 HTTP 헤더에 포함되어 있는지 확인(true/false 반환)
		• getHeader(String name) : 설정한 헤더 이름 name 값을 가져옴
	 --%>
	<%
		response.setHeader("Cache-control", "use_cache");
		response.addHeader("contentType", "text/html; charset=utf-8");
		response.setDateHeader("date", 1L);
	%>
	Cache-control : <%=response.getHeader("Cache-control")%><br />
	contentType : <%=response.getHeader("contentType")%><br />
	date : <%=response.getHeader("date")%>
</body>
</html>