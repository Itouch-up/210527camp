<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../DBConnection/dbConnection.jsp" %>
	<%
		PreparedStatement pstmt = null;

		String action = request.getParameter("action");
		switch(action){
		case "INSERT":
			break;
		case "UPDATE":
			sql="UPDATE student_tbl SET stuname=?, stulevel=?, stugender=? where stuno=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,request.getParameter("stuname"));
			pstmt.setString(2,request.getParameter("stulevel"));
			pstmt.setString(3,request.getParameter("stugender"));
			pstmt.setString(4,request.getParameter("stuno"));
			break;
		case "DELETE":
			sql="DELETE FROM student_tbl where stuno=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,request.getParameter("stuno"));
			break;
		}
		pstmt.executeUpdate();
	%>
</body>
</html>