<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>*** UserInfomation Updates</title>
</head>
<% String user_id = request.getParameter("user_id"); %>
<body>

	<p><a href="userInfo?user_id=<%=user_id%>">$UserInfo</a></p>

	<table cellpadding="0" cellspacing="0" border="1">
		<form action="userupdate" method="post">
			<c:forEach items="${userInfo}" var="dto">
			<input type="hidden" name="user_id" value="${dto.user_id}" >
			<tr>
				<td> ID </td>
				<td> ${dto.user_id}</td>
			</tr>
			<tr>
				<td> PW </td>
				<td> <input type="text" name="user_pw" value="${dto.user_pw}"></td>
			</tr>
			<tr>
				<td> NAME </td>
				<td> <input type="text" name="name" value="${dto.name}"></td>
			</tr>
			<tr>
				<td> EMAIL </td>
				<td> <input type="text" name="email" value="${dto.email}"></td>
			</tr>
			<tr>
				<td> AGE </td>
				<td> <input type="text" name="age" value="${dto.age}"></td>
			</tr>
			<tr>
				<td> EDUCATION </td>
				<td> <input type="text" name="education" value="${dto.education}"></td>
			</tr>
			<tr>
				<td> MAJOR </td>
				<td> <input type="text" name="major" value="${dto.major}"></td>
			</tr>
			<tr >
				<td colspan="2"> <input type="submit" value="Update"></td>
			</tr>
			</c:forEach>
		</form>
	</table>
	
<!--  Log out  -->
<% 
if(user_id != null){
%>
	<p><a href="Mainpage">### LOG OUT ###</a></p>
<%
	}else{
		
	}
%>

</body>
</html>