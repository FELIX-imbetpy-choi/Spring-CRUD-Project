<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>*** Searching Result ***</title>
</head>
<!-- 사용자 아이디 설정 -->
<% String user_id = request.getParameter("user_id"); %>
<body>

<p><a href="Mainpage?user_id=<%=user_id%>">$Mainpage</a></p>

<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>Post</td>
		<td>Apply Now</td>
	<tr>
	<c:forEach items="${search}" var="dto">
	<tr>
		<td><a href="view?seq=${dto.seq}">${dto.title}</td>
		<td><a href="apply?user_id=<%=user_id%>&seq=${dto.seq}">OK</a></td>
	<tr>
	</c:forEach>
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