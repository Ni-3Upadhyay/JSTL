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


@WebServlet("/update")
public class UpdateServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String email = req.getParameter("email");
		String qualification = req.getParameter("qualification");
		int id = Integer.parseInt(req.getParameter("id"));
		
		Student student = new Student(id ,name, dob, email, qualification );
		
		DaoAddStudent dao = new DaoAddStudent(DBConnect.getConn());
		
		HttpSession session = req.getSession();
		
		boolean f = dao.updateStudent(student);
		
		if(f) {
			session.setAttribute("succMsg", "Student details updated successfully");
			resp.sendRedirect("Index.jsp");
		}else {
			session.setAttribute("failMsg", "Student details not updated");
			resp.sendRedirect("Index.jsp");
		}
		
	}

}
