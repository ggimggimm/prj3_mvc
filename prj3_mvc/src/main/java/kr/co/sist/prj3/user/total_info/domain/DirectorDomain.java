package kr.co.sist.prj3.user.total_info.domain;

public class DirectorDomain {

	private int m_num;
	private String d_img, d_name, d_eng;
	
	public DirectorDomain() {
		super();
	}

	public DirectorDomain(int m_num, String d_img, String d_name, String d_eng) {
		super();
		this.m_num = m_num;
		this.d_img = d_img;
		this.d_name = d_name;
		this.d_eng = d_eng;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getD_img() {
		return d_img;
	}

	public void setD_img(String d_img) {
		this.d_img = d_img;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public String getD_eng() {
		return d_eng;
	}

	public void setD_eng(String d_eng) {
		this.d_eng = d_eng;
	}

	@Override
	public String toString() {
		return "DirectorDomain [m_num=" + m_num + ", d_img=" + d_img + ", d_name=" + d_name + ", d_eng=" + d_eng + "]";
	}


	
	

}
