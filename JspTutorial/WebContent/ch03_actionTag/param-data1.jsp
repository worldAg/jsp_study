<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Parameter Data</title>
</head>
<body>
	<%-- 전송된 id 값과 name 값을 받도록 request 내장 객체의 getParameter()메서드 사용 --%>
	<p> 아이디: <%=request.getParameter("id")%>
		<%
			String name = request.getParameter("name");
		%>
	</p>
	
	<%-- 한글이 깨지지 않도록 java.net.URLDecoder.decode()가 java.net.URLEncoder.encode()로 전송된 데이터를 받음 --%>
	<p> 이 름: <%=java.net.URLDecoder.decode(name, "UTF-8")%> 
</body>
</html>