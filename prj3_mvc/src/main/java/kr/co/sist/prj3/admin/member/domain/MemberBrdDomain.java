package kr.co.sist.prj3.admin.member.domain;

/**
 * 회원관리 게시판<br>
 * 아이디, 이름, 주소, 폰번호, 생년월일, 가입일
 * @author user
 *
 */
public class MemberBrdDomain {
	
	private String user_id, name, addr, tel, birth_date, reg_date ;

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

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	} 
	
	
	
}//class
