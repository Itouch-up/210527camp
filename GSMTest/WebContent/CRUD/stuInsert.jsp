<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Layout/header.jsp"%>
<section>
	<h1>학생 정보 수정/삭제</h1>
	<%
		sql="SELECT stuno from student_tbl where rownum <=1 order by stuno desc";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int stuno = 101;
		if(rs.next()) stuno=rs.getInt(1) + 1;
		
	%>
	<form action="./action.jsp" name = "action" method="post">
	<input type="hidden" name="action" value="INSERT">
		<table>
			<tr>
				<th>학생번호(자동발생)</th>
				<td><input type="text" name="stuno" value="<%=stuno %>"></td>
			</tr>
			<tr>
				<th>학생이름</th>
				<td><input type="text" name="stuname" id="stuname"></td>
			</tr>
			<tr>
				<th>학년</th>
				<td><input type="text" name="stulevel" id="stulevel"></td>
			</tr>
			<tr>
				<th>학과</th>
				<td><input type="text" name="majname" id="majname"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="text" name="stugender" id="stugender"></td>
			</tr>
		</table>
		<input type="submit" value="등록">
		<button type="button" onclick="location.href='./stuList.jsp'">조회</button>
	</form>
</section>
<%@ include file="../Layout/footer.jsp"%>