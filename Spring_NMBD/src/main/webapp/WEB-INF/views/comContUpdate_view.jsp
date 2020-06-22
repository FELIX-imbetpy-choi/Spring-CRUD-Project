<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>** Content View **</title>
</head>

<!-- 사용자 아이디 설정 -->
<% String com_id = request.getParameter("com_id"); %>

<body>

<p><a href="comMain?com_id=<%=com_id%>">$Copany Info</a></p>

	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<form action="comContUpdate" method="post">
			<input type="hidden" value="<%= com_id %>" name="com_id">
		
		<c:forEach items="${comContUpdateview}" var="dto">
		<tr>
			<td><input type="hidden" name="seq" value="${dto.seq}"> </td>
		</tr>
		<tr>
				<td>Title</td>
		</tr>
		<tr>
			<td> <input type="text" name="Title" value="${dto.title}" size = "100"> </td>
		</tr>
		<tr>
				<td>Content</td>
		</tr>
		<tr>
				<td> <input type="text" name="Content" value="${dto.contents}" size = "100" rows="50"></td>
				
		</tr>
		</c:forEach>
		<tr >
				<td colspan="2"> <input type="submit" value="Update"></a></td>
		</tr>
	</table>

<p><a href="Mainpage">### LOG OUT ###</a></p>

</body>
</html>