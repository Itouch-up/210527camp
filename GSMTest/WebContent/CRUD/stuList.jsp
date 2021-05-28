<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Layout/header.jsp"%>
<section>
	<h1>학생 정보 리스트</h1>
	<form method="post">
		<table>
			<thead>
				<tr>
					<th>학번</th>
					<th>학생이름</th>
					<th>학년</th>
					<th>성별</th>
					<th>학과</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql="SELECT * FROM student_tbl"; 
					ResultSet rs = conn.prepareStatement(sql).executeQuery();
					String stuno,stuname,stulevel,stugender,majname;
					
					while(rs.next()){
						stuno=rs.getString("stuno");
						stuname=rs.getString("stuname");
						stulevel=rs.getString("stulevel");
						stugender=rs.getString("stugender");
						majname=rs.getString("majname");
					
				%>
				<tr>
					<td><a href="./stuUpdate.jsp?stuno=<%= stuno %>"><%=stuno %></a></td>
					<td><%=stuname %></td>
					<td><%=stulevel %></td>
					<td><%=stugender %></td>
					<td><%=majname %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</form>
</section>
<%@ include file="../Layout/footer.jsp"%>