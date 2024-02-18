<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%!
	int pageCount = 0;
	void addCount() {
		pageCount++;
	}
%>
<%
	addCount();
%>
<h1>환영합니다!</h1>
<p>이 사이트의 방문은 <%=pageCount%>번째 입니다.</p>