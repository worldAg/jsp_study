<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>request 내장 객체</h1>
	<h2>request 내장 객체를 이용하여 HTTP 헤더 정보 출력</h2>
	
	<%-- 요청 HTTP 헤더 관련 메서드
		• getHeader(String name) : 설정한 name의 헤더 값을 가져옴
		• getHeaders(String name) : 설정한 name의 헤더 목록 값을 가져옴
		• getHeaderNames() : 모든 헤더 이름을 가져옴 
		• getIntHeader(String name) : 설정한 name의 헤더 값을 정수로 가져옴
		• getDateHeader(String name) : 설정한 name의 헤더 값을 시간 값으로 가져옴
		• getCookies() : 모든 쿠키 값을 가져옴
	--%>
	<h3>===== 요청 HTTP 헤더 정보 출력 =====</h3>
	<%
		String hostValue = request.getHeader("host");
		String alValue = request.getHeader("accept-language");
		
		out.print("호스트명 : " + hostValue + "<br />");
		out.print("설정된 언어 : " + alValue + "<br />");
	%>
	
	<h3>===== 모든 HTTP 헤더 정보 출력 =====</h3>
	<%
		Enumeration en = request.getHeaderNames(); // 모든 헤더 이름을 Enumeration 객체 타입 변수 en에 저장
		
		while (en.hasMoreElements()) { // hasMoreElements()를 통해 저장된 헤더 이름이 있을 때까지 반복
			String headerName = (String) en.nextElement();
			String headerValue = request.getHeader(headerName);
	%>
	<%=headerName%> : <%=headerValue%><br />
	<%
		} // end while
	%>
</body>
</html>