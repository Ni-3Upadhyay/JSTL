package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<Student> getAllStudent(){
		
		List<Student> list = new ArrayList<Student>();
		Student s = null;
		
		try {
			String sql = "select * from add_student";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				s=new Student();
				
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDob(rs.getString(4));
				s.setEmail(rs.getString(3));
				s.setQualification(rs.getString(5));
				
				list.add(s);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
		
	}
	
	public Student getStudentById(int id) {
		
		Student s = null;
		
		try {
			
			String sql = "select * from add_student where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				s=new Student();
				
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setEmail(rs.getString(3));
				s.setDob(rs.getString(4));
				s.setQualification(rs.getString(5));
					
			}		
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return s;
	}
	
	
	public boolean updateStudent(Student student) {
		
		boolean f = false;
		
		try {
			
			String sql ="update add_student set name=?, dob=?, email=?, qualification=? where id =?"; 
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, student.getName());
			ps.setString(2, student.getDob());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getQualification());
			ps.setInt(5, student.getId());
			
			int i=ps.executeUpdate();
			
			
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;		
		
	}
	
	public boolean deleteStudent(int id) {
		
		boolean f=false;
		
		try {
			
			String sql = "delete from add_student where id=?";
			
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return f;
		
	}
	
	
	
}
