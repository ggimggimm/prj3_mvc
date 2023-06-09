package kr.co.sist.prj3.user.total_info.domain;

public class MainInfoDomain {
	
	private String poster, m_title, summary;
	private int m_num;

	public MainInfoDomain() {
		super();
	}
	

	public MainInfoDomain(String poster, String m_title, String summary) {
		super();
		this.poster = poster;
		this.m_title = m_title;
		this.summary = summary;
	}
	
	

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getm_title() {
		return m_title;
	}

	public void setm_title(String m_title) {
		this.m_title = m_title;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	@Override
	public String toString() {
		return "MainInfoDomain [poster=" + poster + ", m_title=" + m_title + ", summary=" + summary + ", m_num=" + m_num
				+ "]";
	}

	
	
	

}
