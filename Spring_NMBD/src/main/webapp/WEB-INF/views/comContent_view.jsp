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

<p><a href="comMain?com_id=<%=com_id%>">$Company Info</a></p>

<body>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		
		<c:forEach items="${comContentView}" var="dto">
		<tr>
			<td align="center">Posting Title</td>
		</tr>
		<tr>
			<td>${dto.title}</td>
		</tr>
		<tr>
			<td align="center">Contents</td>
		</tr>
		<tr>
			<td>${dto.contents}</td>
		</tr>
		<tr>
			<td><a href="comContUpdateview?seq=${dto.seq}&com_id=<%= com_id %>">Update</a></td>
		</tr>
		</c:forEach>
		
		</form>
	</table>
	
	<p><a href="Mainpage">### LOG OUT ###</a></p>

</body>
</html>