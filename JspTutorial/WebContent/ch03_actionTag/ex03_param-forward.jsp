<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>forward 액션 태그와 param 액션 태그에 아이디와 이름 전달하기</h3>
	
	<jsp:forward page="param_date1.jsp">
		
		<%-- param 액션 태그
			: 현재 JSP 페이지에서 다른 페이지에 정보를 전달하는 태그로 단독으로 사용하는 것이 아니라 <jsp:forward>나 <jsp:include> 태그 내부에 사용됨.
			  형식 <jsp:param name="매개변수명" value="매개변수값" />
			  *데이터를 전달받을 때 request 내장 객체의 getParameter()메서드로 매개변수 값 받음.		
		--%>
		<jsp:param name="id" value="admin" /> <%-- 매개변수 id 값을 전송하기 위한 param 액션 태그 사용 --%>
		<jsp:param name="name" value="<%=java.net.URLEncoder.encode("관리자", "UTF-8")%>" /> <%-- 한글이 깨지지 않도록 java.net.URLEncoder.encode()메서드 사용 --%>

	</jsp:forward>

	<p>Java Server Page</p>
</body>
</html>