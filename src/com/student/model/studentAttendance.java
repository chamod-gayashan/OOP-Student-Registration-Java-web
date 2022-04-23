package com.student.model;

public class studentAttendance {
	private int Id;
	private String Name;
	private String Grade;
	private String Attendance;
	private String Date;

	public studentAttendance(int Id, String Name,String Grade, String Attendance, String Date) {
		this.Id = Id;
		this.Name = Name;
		this.Grade = Grade;
		this.Attendance = Attendance;
		this.Date =  Date;
	
	}

	public int getId() {
		return Id;
	}


	public String getName() {
		return Name;
	}

	public String getGrade() {
		return Grade;
	}

	public String getAttendance() {
		return Attendance;
	}

	
	public String getDate() {
		return Date;
	}

	

	

}
