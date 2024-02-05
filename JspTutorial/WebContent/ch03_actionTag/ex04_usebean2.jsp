<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%-- useBean 액션 태그에 Person 클래스를 사용하여 아이디, 이름 출력 --%>
	<jsp:useBean id="person" class="ch03.com.dao.Person" scope="request" />
	<p>
		ID : <%=person.getId()%><br />
		Name : <%=person.getName()%>
	</p>
	
	<%-- 아이디, 이름 설정 후 재출력 --%>
	<%
		person.setId(20240115);
		person.setName("김길동");
	%>
	<p>
		ID : <%=person.getId()%><br />
		Name : <%=person.getName()%>
	</p>
</body>
</html>