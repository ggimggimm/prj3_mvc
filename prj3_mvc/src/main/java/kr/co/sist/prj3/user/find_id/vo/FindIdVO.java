package kr.co.sist.prj3.user.find_id.vo;

public class FindIdVO {
	private String name; //이름
	private String email; //이메일주소
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
		return "FindIdVO [name=" + name + ", email=" + email + "]";
	}

	
	
}//class
