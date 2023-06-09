package kr.co.sist.prj3.user.mainpage.domain;

public class SearchMovieDomain {
	
	private String poster, m_title, avg_grade, release_date, rank, open_date;
	private int m_num, r_rate;

	public SearchMovieDomain() {
		super();
	}

	public SearchMovieDomain(String poster, String m_title, String avg_grade, String release_date) {
		super();
		this.poster = poster;
		this.m_title = m_title;
		this.avg_grade = avg_grade;
		this.release_date = release_date;
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

	public String getavg_grade() {
		return avg_grade;
	}

	public void setavg_grade(String avg_grade) {
		this.avg_grade = avg_grade;
	}

	public String getrelease_date() {
		return release_date;
	}

	public void setrelease_date(String release_date) {
		this.release_date = release_date;
	}
	
	

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	
	

	public int getR_rate() {
		return r_rate;
	}

	public void setR_rate(int r_rate) {
		this.r_rate = r_rate;
	}
	
	

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}
	

	public String getOpen_date() {
		return open_date;
	}

	public void setOpen_date(String open_date) {
		this.open_date = open_date;
	}

	@Override
	public String toString() {
		return "SearchMovieDomain [poster=" + poster + ", m_title=" + m_title + ", avg_grade=" + avg_grade + ", release_date="
				+ release_date + "]";
	}
	
	

}
