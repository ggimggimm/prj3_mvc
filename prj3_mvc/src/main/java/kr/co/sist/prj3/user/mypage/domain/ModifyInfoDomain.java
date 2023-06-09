package kr.co.sist.prj3.user.mypage.domain;

public class ModifyInfoDomain {
	
	private int zipcode;
	private String user_id,name,birth_date,tel,email,addr,detail_addr;
	
	
	public ModifyInfoDomain() {
	}


	public ModifyInfoDomain(int zipcode, String user_id, String name, String birth_date, String tel, String email,
			String addr, String detail_addr) {
		super();
		this.zipcode = zipcode;
		this.user_id = user_id;
		this.name = name;
		this.birth_date = birth_date;
		this.tel = tel;
		this.email = email;
		this.addr = addr;
		this.detail_addr = detail_addr;
	}


	public int getZipcode() {
		return zipcode;
	}


	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}


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


	public String getBirth_date() {
		return birth_date;
	}


	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getDetail_addr() {
		return detail_addr;
	}


	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}


	@Override
	public String toString() {
		return "ModifyInfoDomain [zipcode=" + zipcode + ", user_id=" + user_id + ", name=" + name + ", birth_date="
				+ birth_date + ", tel=" + tel + ", email=" + email + ", addr=" + addr + ", detail_addr=" + detail_addr
				+ "]";
	}
	
	
	
	
	
	
		
	
	
	

}//class
