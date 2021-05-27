<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ex01_send.jsp" method="post">
		첫 번째 수:<input type="text" name ="su1">
		두 번째 수:<input type="text" name ="su2">
		나이:<input type="text" name ="age">
		이름:<input type="text" name ="name">
		<input type="submit" value="보내기">
		<a href="ex01_send.jsp?su1=100&su2=200&age=25&name=홍길동">GET 방식</a>
	</form>
</body>
</html>