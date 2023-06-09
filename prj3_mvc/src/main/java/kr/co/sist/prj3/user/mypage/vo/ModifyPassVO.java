package kr.co.sist.prj3.user.mypage.vo;

public class ModifyPassVO {
	
	private String pass, newPass, user_id;

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getNewPass() {
		return newPass;
	}

	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "ModifyPassVO [pass=" + pass + ", newPass=" + newPass + ", user_id=" + user_id + "]";
	}

	

}//class
