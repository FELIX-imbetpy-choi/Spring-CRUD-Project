<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>*** company details ***</title>
</head>
<!-- 사용자 아이디 설정 -->
<% 

String user_id = "";
if(request.getParameter("user_id")!=null){
	user_id = request.getParameter("user_id");
}else{
	user_id = null;
}

 %>

<body>

<% 
if(user_id != null){
%>

<p><a href="Mainpage?user_id=<%=user_id%>">$Mainpage</a></p>

<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>*** company details ***</td>
	</tr>
	<c:forEach items="${view}" var="dto">
	<tr>
		<td>${dto.title}</td>
	</tr>
	<tr>
		<td>${dto.contents}</td>
	</tr>

	<tr>
		<form action="apply?user_id=<%=user_id%>&seq=${dto.seq}" method="post">
		<td colspan="2"> <input type="submit" value="$Apply Now"></td>
		</form>
	</tr>
	</c:forEach>
</table>

	<p><a href="Mainpage">### LOG OUT ###</a></p>
<%
	}
%>


<!-- 아이디 없이 접속 시 -->
<% 
if(user_id == null){
%>
<p><a href="Mainpage">$Mainpage</a></p>

<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>*** company details ***</td>
	</tr>
	<c:forEach items="${view}" var="dto">
	<tr>
		<td>${dto.title}</td>
	</tr>
	<tr>
		<td>${dto.contents}</td>
	</tr>
	</c:forEach>
</table>
<%
	}
%>

</body>
</html>