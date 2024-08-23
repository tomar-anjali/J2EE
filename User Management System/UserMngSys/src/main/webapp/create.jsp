<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Record</title>
</head>
<body>
	<form action="create" method="post">
		<input type="text" name="id" placeholder="Enter ID">
		<input type="text" name="name" placeholder="Enter Name">
		<input type="text" name="email" placeholder="Enter Email">
		<input type="text" name="phone" placeholder="Enter Phone">
		<input type="text" name="address" placeholder="Enter Address">
		<button type="submit">Create</button>
	</form>
</body>
</html>