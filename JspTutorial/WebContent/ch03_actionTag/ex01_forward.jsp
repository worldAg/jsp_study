<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
<%--JSP 액션 태그(Action Tag)
	- 서버나 클라이언트에게 어떤 행동을 하도록 명령하는 태그.
	- <% %>와 같은 스크립트 태그의 형식을 따르지 않고 XML 형식 <jsp: ... /> 사용(반드시 끝나는 태그 />로 마무리).
	- 액션 태그의 종류에는 forward, include, useBean, setProperty, param, plugin, element, attribute, body, text가 있음.
	- 액션 태그는 스크립트 태그와 마찬가지로 JSP 페이지에 자바 코드를 삽입할 수 있는 코드로,
	  스크립트 태그를 이용하여 JSP 페이지에 직접 자바 코드를 작성하는 것을 피하기 위해 사용함(자바 코드 삽입을 최소화하여 유지 보수를 효율적으로 하기 위함).  
--%>
</head>
<body>
	<h1>Action Tag - forward</h1>
	<%-- forward 액션 태그
		: 현재 JSP 페이지에서 다른 페이지로 이동하는 태그.
		  형식 <jsp:forward page="파일명" />.
		  JSP 컨테이너는 현재 JSP 페이지에서 forward 액션 태그를 만나면 출력 버퍼에 저장되어 있던 내용을 모두 삭제하고,
		  forward 액션 태그에 설정된 페이지로 프로그램 제어가 이동함.
		 
		*forward 장점
		• JSP를 분리하여 기능별로 모듈화 가능(재사용, 기능 조합)
			: 주소 변경 없이 조건에 따라 다른 화면을 보여줄 수 있음
		• 중간 연산 과정을 숨길 수 있음
			: 요청의 흐름 제어는 웹 컨테이너가 하기 때문에 사용자는 다른 JSP 페이지가 요청을 처리했다는 사실을 모름
		
		*forward 액션 태그의 페이지 흐름 처리
		1. 현재 페이지(ex01_forward.jsp) 실행
		2. 현재 페이지를 실행하다가 forward 액션 태그를 만나면 지금까지 저장된 출력 버퍼의 내용을 삭제하고 프로그램 제어를 page속성에 설정한 todaysDate.jsp로 이동(포워딩)
		3. todaysDate.jsp 실행
		4. JSP 컨테이너는 todaysDate.jsp를 실행한 결과를 웹 브라우저에 응답
	--%>
	<jsp:forward page="todaysDate.jsp" />
	<p>
		===== forward 액션 태그 테스트 =====<br />
		웹 서버는 forward 액션 태그 수행 시 출력 버퍼를 지우므로 해당 텍스트는 손실되어 화면에 보이지 않음
	</p>
</body>
</html>