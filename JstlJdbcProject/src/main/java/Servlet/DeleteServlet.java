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


@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		
		DaoAddStudent dao = new DaoAddStudent(DBConnect.getConn());
		
		boolean f = dao.deleteStudent(id);
		
		
		HttpSession session = req.getSession();
		
		if(f) {
			
			session.setAttribute("succMsg", "Student details Deleted successfully");
			resp.sendRedirect("Index.jsp");
			
//			System.out.println("Data inserted Successfully");
		}
		else {
			session.setAttribute("failMsg", "Something wrong on the server");
			resp.sendRedirect("Index.jsp");
			
//			System.out.println("Something wrong on server");
		}
	}
		
	}

