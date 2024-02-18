<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch03.com.dao.Person" scope="request" />
	
	<%-- setProperty 액션 태그
		: useBean 액션 태그와 함께 자바빈즈의 Setter()메서드에 접근하여 자바빈즈의 멤버 변수인 프로퍼티의 값을 설정하는 태그.
		  폼(form) 페이지로부터 전달되는 요청 파라미터 값을 직접 저장하거나 자바빈즈의 프로퍼티로 변경하여 값을 저장함.
		  형식 <jsp:setProperty name="자바빈즈 식별이름" property="프로퍼티 이름" value="값" />.
		
		*setProperty 액션 태그 속성
		• name: useBean 태그에 id 속성 값으로 설정된 자바빈즈를 식별하기 위한 이름.
		• property: 자바빈즈의 프로퍼티 이름. '*'로 값을 설정할 경우 모든 요청 파라미터가 자바빈즈 프로퍼티의 Setter()메서드에 전달됨.
		• value: 변경할 자바빈즈의 프로퍼티 값. 프로퍼티 값이 null이거나 존재하지 않는 요청 파라미터의 경우 setProperty 액션 태그가 무시됨.
		• param: 자바빈즈의 프로퍼티 값을 전달하는 요청 파라미터 이름. param과 value 속성 동시 사용 불가.
	--%>
	<jsp:setProperty name="person" property="id" value="20240115" />
	<jsp:setProperty name="person" property="name" value="김길동" />
	<p>
		ID : <% out.println(person.getId()); %> <br />
		Name : <% out.println(person.getName()); %>
	</p>
</body>
</html>