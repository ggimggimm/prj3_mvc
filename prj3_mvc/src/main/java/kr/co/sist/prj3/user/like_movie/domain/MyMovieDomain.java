package kr.co.sist.prj3.user.like_movie.domain;

public class MyMovieDomain {

	private String poster, m_title, release_date;
	private int m_num;
	
	public MyMovieDomain() {
	}

	public MyMovieDomain(String poster, String m_title, String release_date, int m_num) {
		this.poster = poster;
		this.m_title = m_title;
		this.release_date = release_date;
		this.m_num = m_num;
	}

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

	public String getRelease_date() {
		return release_date;
	}

	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	@Override
	public String toString() {
		return "MyMovieDomain [poster=" + poster + ", m_title=" + m_title + ", release_date=" + release_date
				+ ", m_num=" + m_num + "]";
	}

}// class
