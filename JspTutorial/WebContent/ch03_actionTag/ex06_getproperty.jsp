<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch03.com.dao.Person" scope="request" />
	<jsp:setProperty name="person" property="id" value="20240115" />
	<jsp:setProperty name="person" property="name" value="김길동" />
	<p>
		<%-- getProperty 액션 태그
			: useBean 액션 태그와 함께 자바빈즈의 Getter()메서드에 접근하여 자바빈즈의 멤버 변수인 프로퍼티의 값을 가져오는 태그.
			  형식 <jsp:getProperty name="자바빈즈 식별이름" property="프로퍼티 이름" />.
		--%>
		ID : <jsp:getProperty name="person" property="id" /> <br />
		Name : <jsp:getProperty name="person" property="name" />
	</p>
</body>
</html>