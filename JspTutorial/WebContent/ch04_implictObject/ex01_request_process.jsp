<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
<%-- 내장 객체(Implicit Object)
	: JSP 페이지에서 사용할 수 있도록 JSP 컨테이너에 미리 정의된 객체들.
	  JSP 페이지가 서블릿 프로그램으로 번역될 때 JSP 컨테이너가 자동으로 내장 객체를 멤버변수, 메서드 매개변수 등 각종 참조변수(객체)로 포함하기 때문에,
	  별도의 import문 없이 사용 가능. 스크립틀릿 태그나 표현문 태그에 선언 없이도 직접 호출 가능.
	  내장 객체는 서블릿 프로그램에서 모두 _jspService()메서드 내부에 있음.
	  
	  *내장 객체 종류
	  • request: 웹 브라우저의 HTTP 요청 정보 저장
	  • response: 웹 브라우저의 HTTP 요청에 대한 응답 정보 저장
	  • out: JSP 페이지에 출력할 내용을 담고 있는 출력 스트림
	  • session: 웹 브라우저의 정보를 유지하기 위한 세션 정보 저장
	  • application: 웹 애플리케이션의 콘텍스트 정보 저장
	  • pageContext: JSP 페이지 정보 저장
	  • page: JSP 페이지를 구현한 자바 클래스로 JSP 페이지 자체를 나타냄
	  • config: JSP 페이지 설정 정보 저장
	  • exception: JSP 페이지 예외 발생 처리
	  (*이 중 request, session, application, pageContext를 이용하여 속성 관리 가능
	  	- 속성은 각각의 내장 객체가 존재하는 동안 JSP 페이지 사이에서 정보를 주고받거나 공유하는데 사용됨
	  	- 속성처리 메서드 네 종류: setAttribute(), getAttribute(), removeAttribute(), getAttributeNames()
	  )
--%>
</head>
<body>
	<h1>request 내장 객체</h1>
	<%-- request 내장 객체
		: 웹 브라우저에서 서버의 JSP 페이지로 전잘하는 정보를 저장함.
		  폼 페이지로부터 입력된 데이터를 전달하는 요청 파라미터 값을 JSP 페이지로 가져옴.
		  JSP 컨테이너는 웹 브라우저에서 서버로 전달되는 정보를 처리하기 위해 java.servlet.http.HttpServletRequest 객체 타입의 request 내장 객체를 사용하여 사용자의 요구 사항을 얻어냄.
		
		*요청 파라미터 관련 메서드
		• getParameter(String name) : 요청 파라미터 이름이 name인 값을 전달 받음. 값이 없으면 null.
		• getParameterValue(String name) : 모든 요청 파라미터 이름이 name인 값을 배열 형태로 전달 받음. 값이 없으면 null.
		• getParameterNames() : 모든 요청 파라미터의 이름과 값을 Enumeration 객체 타입으로 전달 받음.
		• getParameterMap() : 모든 요청 파라미터의 이름과 값을 Map 객체 타입으로 전달 받음.
	--%>
	<%
		request.setCharacterEncoding("utf-8"); // form 페이지에서 입력한 한글을 처리하도록 인코딩 유형을 utf-8로 설정
		
		// getParameter()메서드로 폼에 입력된 아이디와 비밀번호를 전송 받음
		String userid = request.getParameter("id");
		String password = request.getParameter("pwd");
	%>
	<h3>Form으로부터 받은 정보(요청 파라미터)</h3>
	<p>
		아이디 : <%=userid%><br />
		비밀번호 : <%=password%>
	</p>
	
	<h3>웹브라우저/서버 정보</h3>
	<p>
		<%-- request 내장 객체는 웹 브라우저의 요청 및 서버 관련 정보를 얻을 수 있는 메서드 제공 --%>
		클라이언트 IP : <%=request.getRemoteAddr()%><br />
		요청 정보 길이 : <%=request.getContentLength()%><br />
		요청 정보 인코딩 : <%=request.getCharacterEncoding()%><br />
		요청 정보 콘텐츠 유형 : <%=request.getContentType()%><br />
		요청 정보 프로토콜 : <%=request.getProtocol()%><br />
		클라이언트 전송 방식 : <%=request.getMethod()%><br />
		요청 URI : <%=request.getRequestURI()%><br />
		콘텍스트 경로 : <%=request.getContextPath()%><br />
		서버 이름 : <%=request.getServerName()%><br />
		서버 포트 : <%=request.getServerPort()%><br />
		쿼리문 : <%=request.getQueryString()%>
	</p>
</body>
</html>