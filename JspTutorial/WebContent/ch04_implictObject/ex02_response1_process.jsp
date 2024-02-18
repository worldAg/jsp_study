<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h1>response 내장 객체</h1>
	<%-- response 내장 객체
		: 사용자의 요청을 처리한 결과를 서버에서 웹 브라우저로 전달하는 정보를 저장. 
		  즉 서버는 응답 헤더와 처리 결과 데이터를 웹 브라우저로 보냄.
		  JSP 컨테이너는 서버에서 웹 브라우저에서 서버로 전달되는 정보를 처리하기 위해 java.servlet.http.HttpServletResponse 객체 타입의 response 내장 객체를 사용하여 사용자의 요청에 응답함.
		
		*페이지 이동 방식 비교
		• 포워드(foward) 방식
			- 현재 JSP 페이지에서 이동할 URL로 요청 정보를 그대로 전달하므로 사용자가 최초로 요청한 정보가 이동된 URL에서도 유효함
			  페이지 이동이 되어도 URL이 동일하기 때문에 사용자가 이동된 URL을 알 수 없음
			- <jsp:forward page="이동할 페이지" />
		• 리다이렉트(redirect) 방식
			- 클라이언트가 새로 페이지를 요청한 것과 같은 방식으로 페이지가 이동되어 처음 URL에서 이동한 URL이 웹 브라우저 창에 보임
			- response.sendRedirect("이동할 페이지");
	--%>
	<%
		request.setCharacterEncoding("utf-8");
	
		// 입력된 아이디, 비밀번호 가져오기
		String userid = request.getParameter("id");
		String password = request.getParameter("pwd");
	
		// 전송 받은 아이디와 비밀번호 일치 여부에 따라 페이지 이동하도록 함
		if (userid.equals("관리자") && password.equals("1234")) {
			response.sendRedirect("login-success.jsp");
		} else {
			response.sendRedirect("login-failed.jsp");
		}
	%>
</body>
</html>