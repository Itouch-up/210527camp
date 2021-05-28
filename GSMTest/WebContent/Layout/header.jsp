<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../DBConnection/dbConnection.jsp" %>
<header>
	<b>GSM 학생 정보 시스템</b>
	<nav>
		<ul>
			<li><a href="<%request.getContextPath(); %> ./CRUD/stuInsert.jsp">학생 등록</a></li>
			<li><a href="<%request.getContextPath(); %> ./CRUD/stuList.jsp">학생 조회</a></li>
			<li><a href="<%request.getContextPath(); %> ./CRUD/majList.jsp">학과 정보</a></li>
		</ul>
	</nav>
</header>