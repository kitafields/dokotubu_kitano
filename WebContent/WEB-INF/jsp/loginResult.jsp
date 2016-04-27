<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
User loginUser =(User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶログイン</h1>
<% if(loginUser != null){ %>
	<p>ログイン成功</p>
	<p>ようこそ<%= loginUser.getName()%> さん</p>
	<a href="/docoTsubu/Main">つぶやき観覧</a>
<% } else {%>
	<p>ログイン失敗</p>
	<a href="/docoTsubu/">TOPへ</a>
<% } %>
</body>
</html>