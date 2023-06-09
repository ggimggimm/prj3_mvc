package kr.co.sist.prj3.admin.resdetail.domain;

/**
 * 에매현황 Domain
 * @author user
 */ 
public class ReservationDomain {
	
	private int r_rate;
	private String m_title, theater, release_hour, release_date;
	
	
	public ReservationDomain() {
		super();
	}


	public ReservationDomain(int r_rate, String m_title, String theater, String release_hour, String release_date) {
		super();
		this.r_rate = r_rate;
		this.m_title = m_title;
		this.theater = theater;
		this.release_hour = release_hour;
		this.release_date = release_date;
	}


	public int getR_rate() {
		return r_rate;
	}


	public void setR_rate(int r_rate) {
		this.r_rate = r_rate;
	}


	public String getm_title() {
		return m_title;
	}


	public void setm_title(String m_title) {
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


	@Override
	public String toString() {
		return "ReservationDomain [r_rate=" + r_rate + ", m_title=" + m_title + ", theater=" + theater + ", release_hour="
				+ release_hour + ", release_date=" + release_date + "]";
	}

	
	

}//class
