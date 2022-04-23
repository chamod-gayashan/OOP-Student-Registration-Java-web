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
	<h1>Attendance Update</h1>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String attendance = request.getParameter("attendance");
		String date = request.getParameter("date");
	%>
	<div class="bg">
	<div class="form">
	<form action="update" method="post">
		Id<input type="text" name="id" value="<%=id%>" readonly ><br>
		Name <input type="text" name="name" value="<%=name%>"><br>
		Grade<input type="text" name="grade" value="<%=grade%>"><br>
		Attendance<input type="text" name="attendance" value="<%=attendance%>"><br>
		Date<input type="text" name="date" value="<%=date%>">
		
		<input type = "submit" name="submit" value="update Attendance"><br>
		<a href = "studentAttendanceInsert.jsp">
	<button type="button" name="attendance">Student Attendance</button>
	</a>
	
	</form>
	</div>
	</div>


</body>
</html>