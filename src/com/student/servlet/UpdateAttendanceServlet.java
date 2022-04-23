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


@WebServlet("/UpdateAttendanceServlet")
public class UpdateAttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String attendance = request.getParameter("attendance");
		String date = request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = studentDBUtil.updateAttendance( id, name, grade, attendance, date);
		
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
