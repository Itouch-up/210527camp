<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Layout/header.jsp"%>
<section>
	<h1>학과 정보</h1>
	<form>
		<table>
			<thead>
				<tr>
					<th>학과 이름</th>
					<th>학과 총 인원</th>
					<th>학과 개설년도</th>
					<th>학과 정보</th>
					<th>학번</th>
					<th>학생이름</th>
					<th>학년</th>
					<th>성별</th>
				</tr>
			</thead>
			<tbody>
				<%
					sql="SELECT * FROM major_tbl m,student_tbl s where m.majname = s.majname"; 
					ResultSet rs = conn.prepareStatement(sql).executeQuery();
					String majname,majcnt,majbirth,majinfo,stuno,stuname,stulevel,stugender;
					
					while(rs.next()){
						majname=rs.getString("majname");
						majcnt=rs.getString("majcnt");
						majbirth=rs.getString("majbirth");
						majinfo=rs.getString("majinfo");
						stuno=rs.getString("stuno");
						stuname=rs.getString("stuname");
						stulevel=rs.getString("stulevel");
						stugender=rs.getString("stugender");
					
				%>
				<tr>
					<td><%=majname %></td>
					<td><%=majcnt %></td>
					<td><%=majbirth %></td>
					<td><%=majinfo %></td>
					<td><%=stuno %></td>
					<td><%=stuname %></td>
					<td><%=stulevel %></td>
					<td><%=stugender %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</form>
</section>
<%@ include file="../Layout/footer.jsp"%>