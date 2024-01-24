<%-- JSP 페이지 처리 과정
	• (1) JSP 페이지는 실행될 때 웹 컨테이너에 의해 하나의 서블릿 클래스로 변환되어 실행되는데,
	  (2) 이때 일반 서블릿 클래스의 service()메서드에 해당하는 _jspService()메서드가 웹 컨테이너에 의해 자동으로 재정의되며 이 메서드의 내부에 JSP 코드가 복사됨.
	  (3) 이렇게 웹 컨테이너에 의해 서블릿 클래스가 생성되면 인스턴스와 스레드가 생성되고 _jspService()메서드에 의해 응답 페이지가 만들어져 클라이언트에 전송되어 결과 페이지가 표시됨.
	• JSP 컨테이너의 페이지 변환
	     Hello.jsp
	  -> Hello_jsp.java(서블릿 프로그램 생성) 
	  -> Hello_jsp.class(서블릿 프로그램 컴파일)
	  *참조
	   jsp_study\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\JspTutorial\org\apache\jsp\ch01_005fscriptTag\ex01_005fscripting_jsp.java
 --%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<%-- JSP 스트립트 태그(Script Tag)
		: JSP 페이지에서 자바 코드를 사용할 수 있는 영역을 의미
		
		※ 스크립트 태그의 종류
		1. 선언문(declaration) : <%= ··· %>
			- Java 변수나 메서드 정의
		2. 스크립틀릿(scriptlet) : <% ··· %>
			- Java 로직 코드 작성
		3. 표현문(expression) : <%= ··· %>
			- 변수, 계산식, 메서드 호출 결과를 문자열 형태로 출력
	 --%>

	<%-- 선언문 태그를 사용하여 자바 변수와 메서드 정의 --%>
	<%!
		int count = 3;
	
		String makeItLower(String data) {
			return data.toLowerCase();
		}
	%>

	<%-- 스크립틀릿 태그로 자바 로직 코드 작성 --%>
	<%
		for (int i = 1; i <= count; i++) {
			out.println("Java Server Pages " + i + ".<br>");
		}
	%>

	<%-- 표현문 태그로 선언문의 메서드를 호출하여 문자열 형태로 출력 --%>
	<%=makeItLower("Hello World")%>
</body>
</html>