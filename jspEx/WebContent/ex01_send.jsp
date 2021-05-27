<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); //post 방식일 때 한글 깨짐 방지
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		int age = Integer.parseInt(request.getParameter("age"));
		System.out.println(su1);
		System.out.println(su2);
		System.out.println(age+"세");
		String name = request.getParameter("name");
		System.out.println(name);
		
		int sum=su1+su2;
	%>
	합 :<%= su1 %>+<%= su2 %>=<%=sum %> <br/>
	나이:<%= age %> <br/>
	이름:<%= name %> <br/>
	
</body>
</html>