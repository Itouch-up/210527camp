<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 페이지</title>
<style>
div{
	width:300px;
}
</style>
</head>
<body>
	<header>홈쇼핑 회원 등록</header>
	<br>
	<%@ include file="dbConnection.jsp" %>
	<%
		sql="SELECT custno from member_tbl_02 where rownum <=1 order by custno desc";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int custno = 10001;
		if(rs.next()) custno=rs.getInt(1) + 1;
	%>
	<form action="./action.jsp" name=join method="post">
		<input type="hidden" value="insert" name="action">
		<table>
			<tr>
				<th>회원정보(자동발생)</th>
				<td><input type="text" value="<%= custno %>"></td>
			</tr>
			<tr>
				<th>회원성명</th>
				<td><input type="text" id="custname" name="custname"></td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><input type="text"id="phone" name="phone"></td>
			</tr>
			<tr>
				<th>회원주소</th>
				<td><input type="text" id="address" name="address"></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="text" id="joindate" name="joindate"></td>
			</tr>
			<tr>
				<th>고객등급[A:VIP,B:일반,C:직원]</th>
				<td><input type="text" id="grade" name="grade"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" id="city" name="city"></td>
			</tr>
		</table>
		<!-- <input type="submit" value="등록"/> -->
		<button type="button" onclick="joinCheck()">등록</button>
		<button type="button" onclick="location.href='./list.jsp'">조회</button>
	</form>
	<script>
		function joinCheck(){//유효성 검사 진행
			if(document.join.custname.value.trim()/* replace(/\s/gi,"") */==""){
				alert("회원 이름을 입력해주세요.");
				document.join,custname.focus();
				return false;
			}
			if(document.join.phone.value.trim()==""){
				alert("회원전화를 입력해주세요.");
				document.join,phone.focus();
				return false;
			}
			if(document.join.address.value.trim()==""){
				alert("회원주소를 입력해주세요.");
				document.join,address.focus();
				return false;
			}
			if(document.join.joindate.value.trim()==""){
				alert("가입일자를 입력해주세요.");
				document.join,joindate.focus();
				return false;
			}
			if(document.join.grade.value.trim()==""){
				alert("고객등급을 입력해주세요.");
				document.join,grade.focus();
				return false;
			}
			if(document.join.city.value.trim()==""){
				alert("도시코드를 입력해주세요.");
				document.join,city.focus();
				return false;
			}
			document.join.submit();
		}
	</script>
</body>
</html>