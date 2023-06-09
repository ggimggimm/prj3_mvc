package kr.co.sist.prj3.user.find_pw.domain;

public class ResultPwDomain {
	
	private String user_id, name, email;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "ResultPwDomain [user_id=" + user_id + ", name=" + name + ", email=" + email + "]";
	}
	
	
	
}
