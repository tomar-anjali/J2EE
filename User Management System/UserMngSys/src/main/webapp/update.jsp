<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Update Record</h1>
	
	<%ResultSet rs= (ResultSet) request.getAttribute("res");%>
	<%while(rs.next()){	%>
	<form action="updaterec" method="post">
		<input type="text" name="id" value="<%=rs.getInt(1)%>">
		<input type="text" name="name" value="<%=rs.getString(2)%>">
		<input type="text" name="email" value="<%=rs.getString(3)%>">
		<input type="text" name="phone" value="<%=rs.getLong(4)%>">
		<input type="text" name="address" value="<%=rs.getString(5)%>">
		<button type="submit">Update Record</button>
	</form>
	<%} %>
</body>
</html>