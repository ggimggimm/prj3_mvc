package kr.co.sist.prj3.user.find_pw.vo;

public class FindPwVO {
	private String user_id, name, email, pass;

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

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "FindPwVO [user_id=" + user_id + ", name=" + name + ", email=" + email + ", pass=" + pass + "]";
	}


	
	
}//class
