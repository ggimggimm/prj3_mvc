package kr.co.sist.prj3.user.resmovie.domain;

public class ReserveMovieDomain {
	
	private String m_title, theater, release_hour, release_date, open_date, end_date, rank, poster;
	private int m_num;
	public String getM_title() {
		return m_title;
	}
	public void setM_title(String m_title) {
		this.m_title = m_title;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
	public String getRelease_hour() {
		return release_hour;
	}
	public void setRelease_hour(String release_hour) {
		this.release_hour = release_hour;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public String getOpen_date() {
		return open_date;
	}
	public void setOpen_date(String open_date) {
		this.open_date = open_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	
	@Override
	public String toString() {
		return "ReserveMovieDomain [m_title=" + m_title + ", theater=" + theater + ", release_hour=" + release_hour
				+ ", release_date=" + release_date + ", open_date=" + open_date + ", end_date=" + end_date + ", rank="
				+ rank + ", poster=" + poster + ", m_num=" + m_num + "]";
	}
	
	

}//class
