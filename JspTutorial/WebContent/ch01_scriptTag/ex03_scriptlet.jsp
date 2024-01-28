<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%-- 스크립트릿(Scriptlet)
		- <% 자바 코드; %>
		- Java 코드로 이루어진 로직 부분을 표현할 때 사용
		- 각 행이 세미콜론으로 끝나야 함
		- 스크립틀릿을 사용해 선언된 변수는 _jspService() 메서드 내부에 복사되어 지역변수로 스크립틀릿 태그 안에서만 사용 가능
	 --%>
	<%
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println(a + " + " + b + " = " + sum);
	%>
</body>
</html>