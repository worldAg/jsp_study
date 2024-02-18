<%-- JSP 디렉티브 태그(Directive Tag)
	: JSP 페이지를 어떻게 처리할 것인지를 설정하는 태그.
	  JSP 페이지가 서블릿 프로그램에서 서블릿 클래스로 변환될 때 JSP 페이지와 관련된 정보를 JSP 컨테이너에 지시하는 메시지.
	  형식은 <%@ %>.
	  
	  ※ 디렉티브 태그의 종류
		1. page : <%@ page ··· %>
			- JSP 페이지에 대한 정보 설정
		2. include : <%@ include ··· %>
			- JSP 페이지의 특정 영역에 다른 문서 포함
		3. taglib : <%@ taglib ··· %>
			- JSP 페이지에서 사용할 태그 라이브러리 설정
--%>

<%-- page 디렉티브 태그(<%@ page 속성1="값" ··· %>)
	 : 현재 JSP 페이지가 생성할 콘텐츠 유형의 문서, 사용할 자바 클래스, 오류 페이지 설정, 세션 사용 여부, 출력 버퍼의 존재 유무 등과 같이
	   JSP 컨테이너가 JSP 페이지를 실행하는 데 필요한 정보를 설정함
	 
	   *page 디렉티브 태그 속성
	   • language: 사용할 프로그래밍 언어 설정. JSP 페이지는 자체적으로 java를 지원하므로 생략 가능.
	   • contentType: 생성할 문서의 콘텐츠 유형(MIME-type)을 설정. 또한 charset을 설정하여 JSP 페이지의 전체 문자열 변경 가능.
	   • pageEncoding: 문자 인코딩 설정. 기본 값 ISO-8859-1.
	   • import: 사용할 자바 클래스를 설정. 둘 이상 자바 클래스를 포함하는 경우 쉼표(,)로 구분하거나 개별적으로 설정 가능.
	   • session: 현재 JSP 페이지의 HTTP 세션 사용 여부를 설정. 기본 값 true.
	   • info: 현재 JSP 페이지에 대한 설명을 설정하는데 사용. 주석문의 기능과 같음. JSP 개발자가 페이지의 기능을 이해하는 데 도움 줌.   
 --%>
<%@ page contentType="application/msword" %> <%-- 웹브라우저에서 URL 입력 시 Microsoft Word로 열기/저장하는 대화상자 열림 --%>
<%@ page import="java.util.Date" %> <%-- java.util.Date 패키지 사용 --%>
<%@ page info="Date 클래스를 이용한 날짜 출력하기" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<h1>Today is <%=new Date()%></h1>
</body>
</html>