package kr.co.sist.prj3.user.mypage.vo;

public class ModifyInfoVO {
	
	private String user_id,email,tel,addr,detail_addr,zipcode;
	
	
	public ModifyInfoVO() {
	}


	public ModifyInfoVO(String user_id, String email, String tel, String addr, String detail_addr, String zipcode) {
		super();
		this.user_id = user_id;
		this.email = email;
		this.tel = tel;
		this.addr = addr;
		this.detail_addr = detail_addr;
		this.zipcode = zipcode;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
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


	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	@Override
	public String toString() {
		return "ModifyInfoVO [user_id=" + user_id + ", email=" + email + ", tel=" + tel + ", addr=" + addr
				+ ", detail_addr=" + detail_addr + ", zipcode=" + zipcode + "]";
	}
	
	
	
	
}//class
