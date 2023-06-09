package kr.co.sist.prj3.user.total_info.domain;

public class ActorDomain {

	private int m_num;
	private String a_img, a_name, a_eng, role;
	
	public ActorDomain() {
		super();
	}

	public ActorDomain(int m_num, String a_img, String a_name, String a_eng, String role) {
		super();
		this.m_num = m_num;
		this.a_img = a_img;
		this.a_name = a_name;
		this.a_eng = a_eng;
		this.role = role;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getA_img() {
		return a_img;
	}

	public void setA_img(String a_img) {
		this.a_img = a_img;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getA_eng() {
		return a_eng;
	}

	public void setA_eng(String a_eng) {
		this.a_eng = a_eng;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "ActorDomain [m_num=" + m_num + ", a_img=" + a_img + ", a_name=" + a_name + ", a_eng=" + a_eng
				+ ", role=" + role + "]";
	}

	

	

}
