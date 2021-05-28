<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Layout/header.jsp"%>
<section>
	<h1>학생 정보 수정/삭제</h1>
	<%
		String stuno = request.getParameter("stuno");
		sql="SELECT * from student_tbl where stuno = "+stuno;
		ResultSet rs = conn.prepareStatement(sql).executeQuery();
		
	%>
	<form action="./action.jsp" name = "action" method="post">
	<input type="hidden" name="action" value="UPDATE">
		<table>
			<tr>
				<th>학생번호(자동발생, 변경불가)</th>
				<td><input type="text" name="stuno" value="<%=stuno %>" readonly></td>
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
				<th>성별</th>
				<td><input type="text" name="stugender" id="stugender"></td>
			</tr>
		</table>
		<input type="submit" value="수정">
		<button type="button" onclick="location.href='action.jsp?action=DELETE&stuno=<%=stuno%>'">현재 학생정보 삭제</button>
	</form>
</section>
<%@ include file="../Layout/footer.jsp"%>