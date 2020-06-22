<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>*** 0 NMBD Main ***</title>
</head>
<body>
<!-- 쿠키값 가져오기 -->
<% String user_id = request.getParameter("user_id"); %>
<% String user_pw = request.getParameter("user_pw"); %>

	<!-- 검색부분  -->
	<form action="searchForm" method="post">
		<tr>
				<td>Search Now</td>
				<td> <input type="text" name="search" value=""></td>
			</tr>
				<td colspan="2"> <input type="submit" value="Go"></td>
	</form>
	
	
	<!-- 한칸 띄기 -->
	<table>
		<tr height=30></tr>
	</table>
	
	
<% 
if(user_id != null){
%>
<p><a href="userInfo?user_id=<%=user_id%>">$UserInfo</a></p>
<%
	}else{
		
	}
%>

<!-- 개인 회원 로그인 시 Mainpage에 로그인창이 보이지 않게 하기 -->
<% 
if(user_id == null){
%>
	
	<form action="user_login" method="post">
	<table width="500" cellpadding="0" cellspacing="0" border="0">	
			<tr>
			<td align=center>volunteer</td>
		</tr>
	</table>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
			<tr>
			<td width=100 align=center>ID</td>
			<td  align=center><input type="text" name="user_id" maxlength="20"></td>
		</tr>
			<tr>
			<td width=100 align=center>PW</td>
			<td  align=center><input type="password" name="user_pw" maxlength="20"></td>
		</tr>
	</table>
	<table width="500" cellpadding="0" cellspacing="0" border="0">	
			<tr>
				<td align="right"><input type="submit" value="LOGIN" ></td>
			</tr>
	</table>
	</form>
	
	
	<form action="com_login" method="post">
	<table width="500" cellpadding="0" cellspacing="0" border="0">
			<tr>
			<td align=center>Company</td>
		</tr>
		</table>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td width=100 align=center>ID</td>
				<td align=center><input type="text" name="com_id" maxlength="20"></td>
		</tr>
			<tr>
				<td width=100 align=center>PW</td>
				<td align=center><input type="password" name="com_pw" maxlength="20"></td>
		</tr>
		</table>
	<table width="500" cellpadding="0" cellspacing="0" border="0">	
			<tr>
				<td align="right"><input type="submit" value="LOGIN"></td>
			</tr>
	</table>
	</form>
	
	<table width="500" cellpadding="0" cellspacing="0" border="0">
	<tr>
	<form action="UserJoin" method="post">
	<td align=center><input type="submit" value="User$JoinIn"></td>
	</form>
	
	<form action="CompanyJoin" method="post">
	<td align=center><input type="submit" value="Company$JoinIn"></td>
	</form>
	</tr>
	</table>
	
<%
	}else{
		
	}
%>
	<!-- 한칸 띄기 -->
	<table>
		<tr height=30></tr>
	</table>
	
	<!-- 모집공고 확인하기 & 확인하고 지원하기 까지(아이디값이 필요) -->
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td align=center>Post</td>
		</tr>
		<c:forEach items="${Mainlist}" var="dto">
<% 
if(user_id != null){
%>
<tr>
			<!-- 기업공고 상세로 변경 필요  -->
			<td><a href="view?seq=${dto.seq}&user_id=<%=user_id%>">${dto.title}</a></td>
		</tr>
<%
	}else{
%>
		<tr>
			<!-- 기업공고 상세로 변경 필요  -->
			<td><a href="view?seq=${dto.seq}">${dto.title}</a></td>
		</tr>
<%	
	}
%>
		</c:forEach>
	</table>
	
<!--  Log out  -->
<% 
	// 아이디 값이 null 이면 아무것도 뜨지 않는다.
	if(user_id == null){
	
	// 아이디 값이 글자로 null 이라도 아무것도 뜨지 않는다.
	}else if(user_id == "null"){
		
	// 그 나머지에선 로그아웃이 뜬다.
	}else{
%>
		<p><a href="Mainpage">### LOG OUT ###</a></p>
<%
	}
%>
	
</body>
</html>