<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>숫자의 세제곱 계산</h3>
	<%-- useBean 액션 태그
		: JSP 페이지에서 자바빈즈를 사용하기 위해 실제 자바 클래스를 선언하고 초기화하는 태그.

		*useBean 액션 태그 속성
		• id : 자바빈즈를 식별하기 위한 이름.
		• class : 패키지 이름을 포함한 자반빈즈 이름. 자바빈즈는 인수가 없는 기존 생성자가 있어야하며 추상 클래스 사용 불가.
		• scope : 자바빈즈가 저장되는 영역 설정. page(기본 값), request, session, application 중 하나의 값 사용함.
	--%>
	<jsp:useBean id="bean" class="ch03.com.dao.Calculator" />
	<%
		int m = bean.process(5);
		out.print("5의 3제곱 : " + m);
	%>
</body>
</html>