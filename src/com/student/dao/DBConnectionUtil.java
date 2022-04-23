package com.student.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectionUtil {
	private static String url = "jdbc:mysql://localhost:3307/studentmanage";
	private static String userName = "root";
	private static String password = "15370123";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
		}
		catch (Exception e) {
			System.out.println("Data Base Connection is unsuccessful");
		}
		
		return con;
	}
}
