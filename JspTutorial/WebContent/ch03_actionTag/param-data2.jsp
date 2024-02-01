<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Parameter Data</title>
</head>
<body>
	<%-- 전송된 title 값과 date 값을 받도록 request 내장 객체의 getParameter()메서드 사용 --%>
	<%
		String title = request.getParameter("title");
	%>
	<h3><%=java.net.URLDecoder.decode(title)%></h3>
	Today is : <%=request.getParameter("date")%>
</body>
</html>