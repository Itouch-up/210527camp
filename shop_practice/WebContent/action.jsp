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
	<%@ include file="dbConnection.jsp" %>
	<%
		String action = request.getParameter("action");
		String custname = request.getParameter("custname");

		PreparedStatement pstmt = null;
	
		switch(action){
		case "insert":
			sql="INSERT INTO member_tbl_02 values(member_seq.nextval,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("custname"));
			pstmt.setString(2, request.getParameter("phone"));
			pstmt.setString(3, request.getParameter("address"));
			pstmt.setString(4, request.getParameter("joindate"));
			pstmt.setString(5, request.getParameter("grade"));
			pstmt.setString(6, request.getParameter("city"));
			break;
		case "update":
		}
		pstmt.executeUpdate();
	%>
</body>
</html>