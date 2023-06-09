package kr.co.sist.prj3.admin.admin_movie.vo;

public class MovieSelectVO {

	private String select_type, m_title;

	public String getSelect_type() {
		return select_type;
	}

	public void setSelect_type(String select_type) {
		this.select_type = select_type;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	@Override
	public String toString() {
		return "MovieSelectVO [select_type=" + select_type + ", m_title=" + m_title + "]";
	}
	
	
}
