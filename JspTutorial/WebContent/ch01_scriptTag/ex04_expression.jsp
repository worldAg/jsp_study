<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<%
	// 지역변수 선언
	int count = 0;
%>
<body>
	<%-- 표현문(Expression)
		- <%= 자바 코드 %>
		- 선언문 또는 스크립틀릿 태그에서 선언된 변수나 메서드의 리턴 값을 출력하기 위해 사용
		- 표현문 태그는 스크립틀릿 태그에서 사용 불가로 해당 경우 out.print() 메서드 사용 필요
		- 표현문 태그에 작성된 모든 자바 코드의 값은 문자열로 변환되어 웹 브라우저로 출력됨
		  기본 데이터 타입은 toString()으로, 자바 객체 타입은 Object클래스의 toString()을 사용하거나 자체에서 선언한 toString()을 사용하여 출력됨
		- 웹 컨테이너에 의해 _jspService()메서드 내부 출력 객체의 print()메서드 안에 통째로 복사되므로
		  각 행을 세미콜론으로 종료 불가
		- 형식
		  <%=변수%>, <%=리턴 값이 있는 메서드%>, <%=수식%>
	 --%>
	<p>Today's date: <%= new java.util.Date() %></p>
	<p>Page Count is <%= ++count %></p>
</body>
</html>