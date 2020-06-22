<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>*** Company Join In ***</title>
</head>
<body>

	<p><a href="Mainpage">$ Mainpage</a></p>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
	<form action="comjoinaction" method="post">
			<tr>
			<td align="center">ID</td>
			<td><input type="text" name="com_id" size = "50"> </td>
			</tr>
			<tr>
			<td align="center">PW</td>
			<td><input type="password" name="com_pw" size = "50"></td>	
			</tr>
			<tr>
			<td align="center">Company Name</td>
			<td><input type="text" name="company_name" size = "50"></td>			
			</tr>	
			<tr>
			<td align="center">Company Address</td>
			<td><input type="text" name="address" size = "50"></td>
			</tr>
			<tr>
			<td align="center">Business Number</td>
			<td><input type="text" name="business_num" size = "50"></td>
			</tr>
			<tr>
			<td align="center">Company LOGO</td>
			<td><input type="file" name="file"></td>
			</tr>
			
			<tr >
			<td colspan="2" align="right"> <input type="submit" value="Sign in now"></td>
		</tr>
		</form>
	</table>
	
</body>
</html>