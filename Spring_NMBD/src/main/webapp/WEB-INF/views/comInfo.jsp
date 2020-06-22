<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>*** Company Infomation Detail ***</title>
</head>
<!-- 사용자 아이디 설정 -->
<% String com_id = request.getParameter("com_id"); %>
<% System.out.println(request.getParameter("com_id")); %>
<body>

<p><a href="comMain?com_id=<%=com_id%>">$Company Info</a></p>

	<table width="500" cellpadding="0" cellspacing="0" border="1">	
		<form action="comupdate" method="post">
			<c:forEach items="${comInfo}" var="dto">
			<input type="hidden" name="com_id" value="${dto.com_id}" >
			<tr>
				<td align="center"> ID </td >
				<td> ${dto.com_id}</td>
			</tr>
			<tr>
				<td align="center"> PW </td>
				<td> <input type="text" name="com_pw" value="${dto.com_pw}" size="50"></td>
			</tr>
			<tr>
				<td align="center"> NAME </td>
				<td> <input type="text" name="company_name" value="${dto.company_name}" size="50" ></td>
			</tr>
			<tr>
				<td align="center"> ADDRESS </td>
				<td> <input type="text" name="address" value="${dto.address}" size="50" ></td>
			</tr>
			<tr>
				<td align="center"> BUSINESS_NUM </td>
				<td> <input type="text" name="business_num" value="${dto.business_num}" size="50"></td>
			</tr>
			</c:forEach>
			<tr >
				<td colspan="2" align="right"> <input type="submit" value="# Go For Update"></td>
			</tr>
		</form>
	</table>
	
<p><a href="Mainpage">### LOG OUT ###</a></p>
	
</body>
</html>