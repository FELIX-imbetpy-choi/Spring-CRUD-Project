<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>** Apply Confirm **</title>
</head>

<!-- 사용자 아이디 설정 -->
<% String com_id = request.getParameter("com_id"); %>

<p><a href="comMain?com_id=<%=com_id%>">$Company Info</a></p>

<body>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>전공</td>
			<td>학력</td>
			<td>이메일</td>
		</tr>
		<c:forEach items="${comApply}" var="dto">
		<tr>
			<td>${dto.name}</td>
			<td>${dto.age}</td>
			<td>${dto.major}</td>
			<td>${dto.education}</td>
			<td>${dto.email}</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>