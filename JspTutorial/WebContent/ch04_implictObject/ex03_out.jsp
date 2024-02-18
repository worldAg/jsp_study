<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>out 내장 객체</h1>
	<%-- out 내장 객체
		: 웹 브라우저에 데이터를 전송하는 출력 스트림 객체.
		  JSP 페이지에서 사용되는 모든 표현문 태그, HTML, 일반 텍스트 등을 out 내장 객체를 통해 웹 브라우저에 그대로 전달함.
		  
		*out 내장 객체 메서드
		• print(String str) : 설정된 str 값을 웹 브라우저에 출력
		• println(String str) : 설정된 str 값과 함께 줄바꿈(\r\n 또는 \n)도 함께 출력
		• newLine() : 줄바꿈(\r\n 또는 \n) 출력
		• getBufferSize() : 현재 출력 버퍼의 크기를 가져옴
		• getRemaining() : 현재 남아 있는 출력 버퍼의 크기를 가져옴
		• clear() : 현재 출력 버퍼에 저장되어 있는 내용을 웹 브라우저에 전송하지 않고 비움
		• flush() : 현재 출력 버퍼에 저장되어 있는 내용을 웹 브라우저에 전송하고 비움
		• isAutoFlush() : 출력 버퍼가 채워졌을 때 처리를 결정함(자동으로 플러시하는 경우 true, 그렇지 않은 경우 false)
	--%>
	<h3>out 내장 객체로 오늘의 날짜 및 시각 출력하기</h3>
	<%
		out.println("오늘의 날짜 및 시각" + "<br>"); // '\n', '\r'은 웹 브라우저에 줄바꿈되지 않기 때문에 <br> 추가
		out.println(java.util.Calendar.getInstance().getTime());
	%>
</body>
</html>