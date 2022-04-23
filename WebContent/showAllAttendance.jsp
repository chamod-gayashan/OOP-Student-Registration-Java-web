<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<head>
	<link href = "style.css" rel="stylesheet" type="text/css">
	<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<meta charset="ISO-8859-1">
</head>
	<style>
		body {
 			 background-image: url('Includes/images/course.jpg');
 			 background-repeat: no-repeat;
 			 background-attachment: fixed; 
  			 background-size: 100% 100%;
			}
	</style>

<form method="post">
<div class= bg1>
	<h1>All Attendance</h1>
<table class="att">
   <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Grade</th>
        <th>Attendance</th>
        <th>Date</th>
   </tr>
   <%
   try
   {	
	 
	   
	   Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3307/studentmanage";
       String username="root";
       String password="15370123";
       String query="select * from studentattendance";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
           <tr><td><%=rs.getInt("Id") %></td>
           <td><%=rs.getString("Name") %></td>
           <td><%=rs.getString("Grade") %></td>
           <td><%=rs.getString("Attendance") %></td>
           <td><%=rs.getString("Date") %></td></tr>

   <%
       }
   %>
   </table>
   
   
   <a href = "studentAttendanceInsert.jsp">
	<button type="button" name="attendance" >Student Attendance</button>
	</a>
	
	</div>
	
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>
</body>
</html>