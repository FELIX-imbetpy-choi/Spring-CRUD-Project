<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>*** User Join In ***</title>
</head>
<body>

	<p><a href="Mainpage">$ Mainpage</a></p>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
	<form action="joinaction" method="post">
		<tr>
			<td>id</td>
			<td><input type="text" name="user_id" size = "50"> </td>
			</tr>
			<tr>
			<td>pw</td>
			<td><input type="password" name="user_pw" size = "50"></td>	
			</tr>
			<tr>
			<td>이름</td>
			<td><input type="text" name="name" size = "50"></td>			
			</tr>
			
			<tr>
			<td>나이</td>
			<td><input type="text" name="age" size = "50"></td>
			</tr>
			<tr>
			<td>email</td>
			<td><input type="text" name="email" size = "50"></td>
			</tr>
			<tr>
			<td>학력</td>
			<td><input type="text" name="education" size = "50"></td>
			</tr>
			<tr>
			<td>전공</td>
			<td><input type="text" name="major" size = "50"></td>
		</tr>

		<tr >
			<td colspan="2"> <input type="submit" value="회원가입"></td>
		</tr>
		</form>
	</table>
	
</body>
</html>