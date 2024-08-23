<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Data</title>
</head>
<body>
	
	
	<table>
	<tr>
		<th colspan="7"><a href="create.jsp"><button>Add new User Record</button></a></th>		
	</tr>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Phone</th>
		<th>Address</th>
		<th colspan="2">Action</th>
	</tr>
	
	<%ResultSet rs= (ResultSet) request.getAttribute("res");%>
	<%while(rs.next()){	%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getLong(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><a href="update?id=<%=rs.getInt(1)%>"><button>Update</button></a></td>
			<td><a href="delete?id=<%=rs.getInt(1)%>"><button>Delete</button></a></td>
		</tr>
	
	<%} %>
	</table>
	
</body>
</html>