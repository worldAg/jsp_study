<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- taglib 디렉티브 태그(<%@ taglib uri="경로" prefix="태그 식별자"%>)
	- 현재 JSP 페이지에 표현 언어, JSTL, 사용자 정의 태그(custom tag) 등 태그 라이브러리를 설정
	- taglib 디랙티브 태그를 사용하면 코드의 길이가 줄어들고 인식성이 좋아짐
	 
	*taglib 디렉티브 태그 속성
	• prefix: 사용할 커스텀 태그의 네임스페이스를 지정. 명시된 값은 태그 라이브러리를 식별하기 위한 접두사로 사용
	• uri: 태그 라이브러리에 정의한 태그와 속성 정보를 저장한 파일이 존재하는 위치를 지정
 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- JSTL 설정(*WEB-INF/lib 위치에 jstl.jar 라이브러리 파일이 있어야 함) --%>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<h1>JSTL</h1>
	<p>
		JSTL은 유용한 JSP 태그의 모음으로 자주 사용되는 핵심 기능을 제공함.<br />
		반복문 및 조건문과 같은 논리적 구조 작업, XML 문서 조작, 국제화 태그 조작, SQL 조작 수행을 위한 태그 등을 지원함.
	</p>
	<p>
		1부터 10까지 1씩 증가하는 JSTL Core 태그 반복문 사용<br />
		<c:forEach var="k" begin="1" end="10" step="1">
			<c:out value="${k}" />
		</c:forEach>
	</p>
</body>
</html>