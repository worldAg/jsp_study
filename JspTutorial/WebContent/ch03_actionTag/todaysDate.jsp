<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Today's date</title>
</head>
<body>
	<p>오늘의 날짜 및 시간 : 	<%=(new java.util.Date()).toLocaleString()%></p>
</body>
</html>