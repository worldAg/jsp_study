<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h1>Action Tag - include</h1>
	<%-- include 액션 태그
		: include 디렉티브 태그처럼 현재 JSP 페이지 특정 영역에 외부 파일(HTML, JSP, 서블릿 페이지 등)의 내용을 포함하는 태그.
		  형식은 <jsp:include page="파일명" flush="false" />.
		  JSP 컨테이너는 현재 JSP 페이지에서 include 액션 태그를 만나면,
		  include 액션 태그에 설정된 외부 파일의 실행 내용이 현재 JSP 페이지의 출력 버퍼에 추가 저장되어 출력됨.
		 
		*flush 속성
			: 설정한 외부 파일로 제어가 이동할 때 지금까지 출력 버퍼에 저장한 결과를 어떻게 처리할지 정함
		 - flush="true"일 경우,
		   외부 파일로 제어가 이동할 때 현재 JSP 페이지가 지금까지 출력 버퍼에 저장된 내용을 웹 브라우저에 출력하고 출력 버퍼를 지움.
		   출력 버퍼를 웹 브라우저에 저장할 때 헤더 정보도 같이 전송되는데 이후에 헤더 정보를 추가해도 반영되지 않기 때문에
		   일반적으로 flush="false"로 설정함.
		
		*include 디렉티브 태그와의 차이점
		• include 디렉티브 태그는 단순히 다른 페이지의 내용이 텍스트로 포함(소스코드가 그대로 복사)
			- 외부 파일은 현재 페이지에 삽입되기 때문에 페이지 내의 변수 사용하여 데이터 전달 가능
			- 공통으로 사용되는 코드 혹은 저작권 같은 문장을 포함하는 경우 사용(정적 페이지에 사용)
		• include 액션 태그는 외부 파일의 실행 결과를 포함
			- 외부 파일은 별도의 파일이기 때문에 request 기본 내장 객체 혹은 param 액션 태그를 이용하여 데이터 전달해야 함
			- 화면 레이아웃의 일부분을 모듈화 할 때 사용(동적 페이지에 사용)
	 --%>
	<jsp:include page="todaysDate.jsp" />
	<p>
		===== include 액션 태그 테스트 =====<br />
		forward 액션 태그와 다르게 포함된 외부 파일이 실행된 후 처음 실행한 JSP 페이지로 제어를 반환하기 때문에<br />
		해당 텍스트는 화면에 보여집니다.
	</p>
</body>
</html>