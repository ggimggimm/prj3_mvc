package kr.co.sist.prj3.user.find_id.domain;

public class ResultIdDomain {
	
	private String user_id; //아이디
	private String reg_date; //생성일자
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "ResultIdDomain [user_id=" + user_id + ", reg_date=" + reg_date + "]";
	}
	
}//class
