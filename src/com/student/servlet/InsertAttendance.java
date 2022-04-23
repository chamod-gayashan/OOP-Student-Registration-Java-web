package com.student.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.dao.studentDBUtil;
import com.student.model.studentAttendance;


@WebServlet("/InsertAttendance")
public class InsertAttendance extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Id");
		String name = request.getParameter("Name");
		String grade = request.getParameter("Grade");
		String attendance = request.getParameter("Attendance");
		String date = request.getParameter("Date");
		
		boolean isTrue;
		
		isTrue = studentDBUtil.insertAttendance(id, name, grade, attendance,date);
		
		if(isTrue == true) {
			
			List<studentAttendance> stuAttendance = studentDBUtil.getstudentAttendancedetails(id);
			request.setAttribute("stuAttendance", stuAttendance);
			
			RequestDispatcher dis = request.getRequestDispatcher("studentAttendance.jsp");
			dis.forward(request,response);
		}else {
			List<studentAttendance> stuAttendance = studentDBUtil.getstudentAttendancedetails(id);
			request.setAttribute("stuAttendance", stuAttendance);
			
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
