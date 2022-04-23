<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link href = "style.css" rel="stylesheet" type="text/css">
	<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
	<style>
	body {
 			 background-image: url('Includes/images/course.jpg');
 			 background-repeat: no-repeat;
 			 background-attachment: fixed; 
  			 background-size: 100% 100%;
			}
	</style>
<body>
	<h1>Update Attendance</h1>
	<div class="bg">
	<div class="form">
	<table>
	<c:forEach var = "stu" items="${stuAttendance}">
	
	<c:set var="id" value="${stu.id }"/>
	<c:set var="name" value="${stu.name }"/>
	<c:set var="grade" value="${stu.grade }"/>
	<c:set var="attendance" value="${stu.attendance }"/>
	<c:set var="date" value="${stu.date }"/>
	
	
	
	<tr>
		<td>Student Id</td>
		<td>${stu.id}</td>
	</tr>
	<tr>
		<td>Student Name</td>
		<td>${stu.name}</td>
	</tr>
	<tr>
		<td>Student Grade</td>
		<td>${stu.grade}</td>
	</tr>
	<tr>
		<td>Attendance</td>
		<td>${stu.attendance}</td>
	</tr>
	<tr>
		<td>date</td>
		<td>${stu.date}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<a href = "studentAttendanceInsert.jsp">
	<button type="button" name="attendance">Student Attendance</button>
	</a>
	</div>
	</div>
	<br>
	<br>

	
</body>
</html>