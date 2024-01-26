<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%-- 선언문(Declaration)
		- <%! 자바 코드; %>
		- Java 변수나 메서드를 선언하기 위해 사용
		- 각 행이 세미콜론으로 끝나야 함
		- 선언문을 사용해 선언된 변수는 JSP 파일이 웹 컨테이너에 의해 컴파일될 때,
		  멤버변수로 인식되기 때문에 JSP 페이지 어느 위치에서도 참조 가능
		  (_jspService() 메서드 외부에 선언되기 때문에 전역변수(멤버변수)로 사용 가능)
	 --%>
	<h1><%= getStr() %></h1>

	<%! private String getStr() {
			str += "Test";
			return str;
		}
		
		private String str = "Declaration ";
	%>
</body>
</html>