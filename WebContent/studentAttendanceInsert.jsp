<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	
	<h1>Student Attendance</h1>
	<div class="bg">
	<div class="form">
	<form action="insert" method="post">
		<input type="text" placeholder="Id" name="Id"><br>
		<input type="text"  placeholder="Name" name="Name"><br>
		<input type="text"  placeholder="Grade" name="Grade"><br>
		<input type="text"  placeholder="Attendance" name="Attendance"><br>
		<input type="text" placeholder="Date" name="Date">
	
		<br>
		<input type = "submit" name="submit" value="Insert Attendance">
	
		<a href = "showAllAttendance.jsp">
	<button type="button" name="show">Show All Attendance</button>
	</a>
	</form>
	</div>
	</div>
	
</body>
</html>