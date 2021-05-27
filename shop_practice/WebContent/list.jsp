<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록 페이지</title>
</head>
<body>
	<h2>회원 목록 조회/수정</h2>
	<table>
		<thead>
			<tr>
				<th>회원 번호</th>
				<th>회원 성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>
		</thead>
		<tbody>
			<%@ include file="dbConnection.jsp" %>
			<%
				//member_tbl_02 테이블에서 전체 데이터 조회
				sql="SELECT * FROM MEMBER_TBL_02";
				ResultSet rs = conn.prepareStatement(sql).executeQuery();
				String custno, custname, phone, address, joindate, grade, city;
				
				while(rs.next()){
					custno=rs.getString("custno");
					custname=rs.getString("custname");
					phone=rs.getString("phone");
					address=rs.getString("address");
					grade=rs.getString("grade");
					city=rs.getString("city");
					
					joindate=rs.getString("joindate");
					/*
						2018-07-29 12:30:43
					*/
					if(joindate.length()>10)joindate=joindate.substring(0,10);
					
					switch(grade){
						case "A":grade="VIP";break;
						case "B":grade="일반";break;
						case "C":grade="직원";break;
					}
					/* System.out.println(custno + custname + phone); */
					
				%>
				<tr>
					<td><a href="./update.jsp"><%=custno %></a></td>
					<td><%=custname %></td>
					<td><%=phone %></td>
					<td><%=address %></td>
					<td><%=joindate %></td>
					<td><%=grade %></td>
					<td><%=city %></td>
				</tr>
				
				
				<%
					}
				%>
				
		</tbody>
	</table>
</body>
</html>