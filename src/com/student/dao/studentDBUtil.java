package com.student.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.student.model.Student;
import com.student.model.studentAttendance;

public class studentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Student> validate(String userName, String password){
	
		ArrayList<Student> stu = new ArrayList<>();
		
		
		try {
			
			con = DBConnectionUtil.getConnection(); 
			stmt = con.createStatement();
			String sql = "SELECT * from student where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
		
			if(rs.next()) {
				int id = rs.getInt(1);
				String studentName = rs.getString(2);
				String email = rs.getString(3);
				String grade = rs.getString(4);
				String birth = rs.getString(5);
				String phoneNum = rs.getString(6);
				String userU = rs.getString(7);
				String passU = rs.getString(8);
				
				Student s = new Student(id, studentName, email, grade, birth, phoneNum, userU, passU);
				stu.add(s);
			}
		} 
		catch(Exception e) {
		 	e.printStackTrace();
		}
		
		return stu;
		}
	
	public static boolean insertAttendance(String id, String name, String grade, String attendance, String date) {
		
		boolean isSuccess = false;
		
		
		
		try {
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();
			String sql = "Insert into studentattendance value('"+id+"','"+name+"','"+grade+"','"+attendance+"','"+date+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<studentAttendance> getstudentAttendancedetails(String id) {
		
		int convertedID = Integer.parseInt(id);
		
		ArrayList<studentAttendance> stu = new ArrayList<>();
		
		try {
		
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();
			String sql = "select * from studentattendance where Id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Id = rs.getInt(1);
				String Name = rs.getString(2);
				String Grade =  rs.getString(3);
				String Attendance =  rs.getString(4);
				String Date =  rs.getString(5);
			
				studentAttendance c = new studentAttendance(Id,Name,Grade,Attendance,Date);
				stu.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return stu;
	}
	
	public static boolean updateAttendance(String id, String name,String grade, String attendance, String date) {
	
		try {
			
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();
			String sql = "update studentattendance set Name='"+name+"',Grade='"+grade+"',Attendance='"+attendance+"',Date='"+date+"'" +"where Id ='"+id+"'";        
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static boolean deleteAttendance(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();
			String sql = "delete from studentattendance where Id ='"+convId+"'";  
			int r = stmt.executeUpdate(sql);
		
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
}

















