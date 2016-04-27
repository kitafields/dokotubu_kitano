<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.User,model.Mutter,java.util.List" %>
<%
User loginUser = (User) session.getAttribute("loginUser");
%>
<%
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこ粒メイン</h1>
<p>
<%=loginUser.getName() %>さんログイン中
</p>
<a href="/docoTsubu/Logout">ログアウト</a>
<p>
<a href="/docoTsubu/Main">更新</a>
<form action="/docoTsub/Main" method ="post">
<input type="text" name="text">
<input type ="submit" value="tw">
</form>

<% for(Mutter mutter : mutterList){ %>
	<p> <%= mutter.getUserName() %>:<%= mutter.getText() %> </p>
	<% } %>
</body>
</html>