package Entity;

public class Student {
	
	private int id;
	private String name;
	private String dob;
	private String email;
	private String qualification;
	
	public Student() {
		super();
	}

	public Student(String name, String dob, String email, String qualification) {
		super();
		this.name = name;
		this.dob = dob;
		this.email = email;
		this.qualification = qualification;
	}

	public int getId() {
		return id;
	}

	public Student(int id, String name, String dob, String email, String qualification) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.email = email;
		this.qualification = qualification;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", dob=" + dob + ", email=" + email + ", qualification=" + qualification
				+ "]";
	}
	
	
	

}
