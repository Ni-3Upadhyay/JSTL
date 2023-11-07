package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DaoAddStudent;
import Entity.Student;
import connection.DBConnect;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String email = req.getParameter("email");
		String qualification = req.getParameter("qualification");
		
		Student student = new Student(name, dob, email, qualification);
		
		DaoAddStudent dao = new DaoAddStudent(DBConnect.getConn());
		
		boolean f = dao.addStudent(student);
		
		HttpSession session = req.getSession();
		
		if(f) {
			
			session.setAttribute("succMsg", "Student details submitted successfully");
			resp.sendRedirect("addStudent.jsp");
			
//			System.out.println("Data inserted Successfully");
		}
		else {
			session.setAttribute("failMsg", "Something wrong on the server");
			resp.sendRedirect("addStudent.jsp");
			
//			System.out.println("Something wrong on server");
		}
	}
	
	

}
