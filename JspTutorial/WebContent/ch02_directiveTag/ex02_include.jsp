<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%-- include 디렉티브 태그
		- 특정 JSP 파일 또는 HTML 파일을 해당 JSP 페이지에 삽입할 수 있도록 함.
		- include 지시어는 웹 컨테이너에 의해 컴파일될 때 함께 설정된 외부 파일의 내용이 각각 컴파일되는 것이 아니라,
		  외부 소스의 원본 내용을 그대로 붙여넣은 하나의 병합된 페이지만을 컴파일 함.
		- 머리글과 바닥글 같은 공통 부분을 별도 JSP 파일로 만들어 웹 페이지 모듈화 가능(코드의 재사용 향상)
	 --%>
	 <%@ include file="header.jsp" %>
	 <p>Today is <%= java.util.Calendar.getInstance().getTime() %></p>
	 <%@ include file="footer.jsp" %>
</body>
</html>