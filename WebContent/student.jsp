<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
	<c:forEach var = "stu" items="${stuDetails}">
	
	<tr>
		<td>Student Id</td>
		<td>${stu.id}</td>
	</tr>
	<tr>
		<td>Student Name</td>
		<td>${stu.studentName}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${stu.email}</td>
	</tr>
	<tr>
		<td>Grade</td>
		<td>${stu.grade}</td>
	</tr>
	<tr>
		<td>Birth</td>
		<td>${stu.birth}</td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td>${stu.phoneNum}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${stu.userName}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${stu.password}</td>
	</tr>
	</c:forEach>
	</table>
	
	
</body>
</html>