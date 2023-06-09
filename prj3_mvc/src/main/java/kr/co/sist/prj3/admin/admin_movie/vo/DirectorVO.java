package kr.co.sist.prj3.admin.admin_movie.vo;

public class DirectorVO {
	
	private String d_name, d_eng, d_img;
	private int m_num, d_num;

	public DirectorVO() {
	}

	public DirectorVO(String d_name, String d_eng, String d_img, int m_num, int d_num) {
		super();
		this.d_name = d_name;
		this.d_eng = d_eng;
		this.d_img = d_img;
		this.m_num = m_num;
		this.d_num = d_num;
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

	public String getD_img() {
		return d_img;
	}

	public void setD_img(String d_img) {
		this.d_img = d_img;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	@Override
	public String toString() {
		return "DirectorDomain [d_name=" + d_name + ", d_eng=" + d_eng + ", d_img=" + d_img + ", m_num=" + m_num
				+ ", d_num=" + d_num + "]";
	}

}
