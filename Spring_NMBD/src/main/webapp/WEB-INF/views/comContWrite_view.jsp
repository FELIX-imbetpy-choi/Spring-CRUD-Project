<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>** Company Contents write **</title>
</head>

<!-- 사용자 아이디 설정 -->
<% String com_id = request.getParameter("com_id"); %>

<body>

<p><a href="comMain?com_id=<%=com_id%>">$Company Info</a></p>

<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="comContWrite" method="post">
			<input type="hidden" value="<%= com_id %>" name="com_id">
			<tr>
				<td align="center"> # TITLE </td>
			</tr>
			<tr>
				<td> <input type="text" name="bTitle" size = "80"> </td>
			</tr>
			<tr>
				<td align="center"> # CONTENT </td>
			</tr>
			<tr>
				<td> <textarea name="bContent" rows="60" style="resize: none;width:600px;height:300px"></textarea> </td>
			</tr>
			<tr >
				<td colspan="2" align="right"> <input type="submit" value="Write"></td>
			</tr>
		</form>
	</table>

<p><a href="Mainpage">### LOG OUT ###</a></p>

</body>
</html>