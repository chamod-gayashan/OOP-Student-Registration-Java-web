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
		<th class=th1>Student Id</th>
		<td>${stu.id}</td>
	</tr>
	<tr>
		<th class=th1>Student Name</th>
		<td>${stu.name}</td>
	</tr>
	<tr>
		<th class=th1>Student Grade</th>
		<td>${stu.grade}</td>
	</tr>
	<tr>
		<th class=th1>Attendance</th>
		<td>${stu.attendance}</td>
	</tr>
	<tr>
		<th class=th1>date</th>
		<td>${stu.date}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<br>
	
	<a href = "studentAttendanceInsert.jsp">
	<button class="button" name="attendance">Studeunt Attendance</button>
	</a>
	
	
	<c:url value = "updateStudentAttendance.jsp" var="stuupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="grade" value="${grade}"/>
		<c:param name="attendance" value="${attendance}"/>
		<c:param name="date" value="${date}"/>
	</c:url>
	
	<a href = "${stuupdate}">
	<button class="but1" type="button" name="update">update Attendance</button>
	</a>
	
	<c:url value="deleteAttendance.jsp" var="stuDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="grade" value="${grade}"/>
		<c:param name="attendance" value="${attendance}"/>
		<c:param name="date" value="${date}"/>
	</c:url>
	<a href = "${stuDelete}">
	<button class="but1" type="button" name="delete">Delete Attendance</button>
	</a>
	</div>
	</div>
</body>
</html>