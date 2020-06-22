<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>*** User Secession Confirm ***</title>
</head>
<% String user_id = request.getParameter("user_id"); %>
<body>

<p><a href="Mainpage?user_id=<%=user_id%>">$Mainpage</a></p>
	
	<p>Are you sure for your Secession?</p>

	<form action="deleteuser?user_id=<%=user_id%>" method="post">
		<tr >
				<td colspan="2"> <input type="submit" value="YES"></td>
			</tr>
	</form>
	
	<form action="Mainpage?user_id=<%=user_id%>" method="post">
		<tr >
				<td colspan="2"> <input type="submit" value="NO"></td>
			</tr>
	</form>
	
<!--  Log out  -->
<% 
if(user_id != null){
%>
	<p><a href="Mainpage">### LOG OUT ###</a></p>
<%
	}else{
		
	}
%>

</body>
</html>