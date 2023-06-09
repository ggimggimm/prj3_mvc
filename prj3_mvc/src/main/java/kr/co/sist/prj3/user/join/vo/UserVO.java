package kr.co.sist.prj3.user.join.vo;

public class UserVO {

	//이름, 아이디, 닉네임, 비밀번호, 이메일, 휴대폰 번호,주소, 상세주소, 우편번호, 생년월일
	private String name, user_id, nick_name, pass, email,
	tel, addr, detail_addr, zipcode, birth_date ;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
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

	public String getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}

	@Override
	public String toString() {
		return "UserVO [name=" + name + ", user_id=" + user_id + ", nick_name=" + nick_name + ", pass=" + pass
				+ ", email=" + email + ", tel=" + tel + ", addr=" + addr + ", detail_addr=" + detail_addr + ", zipcode="
				+ zipcode + ", birth_date=" + birth_date + "]";
	}
	
		
	
	
	
}//class
