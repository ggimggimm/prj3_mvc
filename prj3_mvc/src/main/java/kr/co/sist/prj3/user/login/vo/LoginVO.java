package kr.co.sist.prj3.user.login.vo;

public class LoginVO {

	private String user_id,pass;

	public String getUser_id() {
		return user_id;
	} 

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "LoginVO [user_id=" + user_id + ", pass=" + pass + "]";
	}

	
	
	
}//class
