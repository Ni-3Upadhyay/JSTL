package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Entity.Student;

public class DaoAddStudent {

	private Connection conn;

	public DaoAddStudent(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addStudent(Student student) {
		
		boolean f = false;
		
		try {
				String sql="insert into add_student(name, dob, email, qualification) values(?,?,?,?)";
			
				PreparedStatement statement = conn.prepareStatement(sql);
				
				statement.setString(1, student.getName());
				statement.setString(2, student.getDob());
				statement.setString(3, student.getEmail());
				statement.setString(4, student.getQualification());
				
				
				int i = statement.executeUpdate();
				
				if(i==1) {
					f=true;
				}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
}
