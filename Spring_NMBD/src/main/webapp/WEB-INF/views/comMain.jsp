<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>** Company Mainpage **</title>
</head>

<!-- 사용자 아이디 설정 -->
<% String com_id = request.getParameter("com_id"); %>

<body>
	<table width="800" cellpadding="0" cellspacing="0" border="1">	
		<tr>
			<td align="center">Post</td>
			<td align="center">Volunteer Confirm</td>
		</tr>
		<c:forEach items="${comMain}" var="dto">
		<tr>
			<td><a href="comContentView?seq=${dto.seq}&com_id=<%= com_id %>">${dto.title}</a></td>
			<td align="center"><a href="comApply?seq=${dto.seq}&com_id=<%= com_id %>">Volunteer Confirm</a></td>
		</tr>
		</c:forEach>
	</table>
	<tr>
		<!-- 사용자 아이디 설정 -->
		<td colspan="5"> <a href="comContWrite_view?com_id=<%= com_id %>">$Posting Now</a> </td>
	</tr>
	
	<p><a href="comInfo?com_id=<%=com_id%>">$Company Info Update</a></p>
	
	<p><a href="comSecession?com_id=<%=com_id%>">$Company Secession</a></p>
	
	<p><a href="Mainpage">### LOG OUT ###</a></p>
</body>
</html>