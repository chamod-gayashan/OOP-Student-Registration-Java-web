package com.student.model;

public class Student {
	private int id;
	private String studentName;
	private String email;
	private String grade;
	private String birth;
	private String phoneNum;
	private String userName;
	private String password;
	
	public Student(int id, String studentName,String email, String grade, String birth, String phoneNum, String userName, String password) {
		this.id = id;
		this.studentName = studentName;
		this.email = email;
		this.grade =  grade;
		this.birth = birth;
		this.phoneNum = phoneNum;
		this.userName = userName;
		this.password = password;
		
	}
	
	public int getId() {
		return id;
	}

	public String getStudentName() {
		return studentName;
	}

	public String getEmail() {
		return email;
	}

	public String getGrade() {
		return grade;
	}

	public String getBirth() {
		return birth;
	}
	public String getPhoneNum() {
		return phoneNum;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	
}
