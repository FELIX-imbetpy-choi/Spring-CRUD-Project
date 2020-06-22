<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>*** Company Secession Confirm ***</title>
</head>
<% String com_id = request.getParameter("com_id"); %>
<body>
	
	<p>Are you sure for your Secession?</p>

	<form action="deletecomuser?com_id=<%=com_id%>" method="post">
		<tr >
				<td colspan="2"> <input type="submit" value="YES"></td>
			</tr>
	</form>
	
	<form action="Mainpage?user_id=<%=com_id%>" method="post">
		<tr >
				<td colspan="2"> <input type="submit" value="NO"></td>
			</tr>
	</form>
	
<!--  Log out  -->
<% 
if(com_id != null){
%>
	<p><a href="Mainpage">### LOG OUT ###</a></p>
<%
	}else{
		
	}
%>

</body>
</html>