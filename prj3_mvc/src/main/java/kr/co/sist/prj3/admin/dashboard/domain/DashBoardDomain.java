package kr.co.sist.prj3.admin.dashboard.domain;

public class DashBoardDomain {

	// 예매율 1위
	private String poster, m_title;

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	@Override
	public String toString() {
		return "DashBoardDomain [poster=" + poster + ", m_title=" + m_title + "]";
	}
				
	
	
}//class
