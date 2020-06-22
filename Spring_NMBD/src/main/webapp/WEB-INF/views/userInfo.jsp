<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>*** UserInfomation ***</title>
</head>
<!-- 사용자 아이디 설정 -->
<% String user_id = request.getParameter("user_id"); %>
<body>

	<p><a href="Mainpage?user_id=<%=user_id%>">$Mainpage</a></p>

	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td align=center>My Apply History</td>
		</tr>
		<c:forEach items="${userApplyInfo}" var="dto">
		<tr>
			<td>${dto.title}</td>
		</tr>
		</c:forEach>
	</table>
	
	<p><a href="userInfoUpdate?user_id=<%=user_id%>">$UserInfo Update</a></p>
	<p><a href="userSecession?user_id=<%=user_id%>">$User Secession</a></p>
	
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