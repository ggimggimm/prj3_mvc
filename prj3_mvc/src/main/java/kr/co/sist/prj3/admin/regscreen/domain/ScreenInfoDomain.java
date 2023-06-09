package kr.co.sist.prj3.admin.regscreen.domain;

/**
 * 상영정보등록 Domain
 * @author user
 */
public class ScreenInfoDomain {
	
	private int m_num;
	private String m_title, eng_title, rank, release_date, theater, open_date, end_date, release_hour; 
 
	public ScreenInfoDomain() {
	}

	public ScreenInfoDomain(int m_num, String m_title, String eng_title, String rank, String release_date,
			String theater, String open_date, String end_date, String release_hour) {
		super();
		this.m_num = m_num;
		this.m_title = m_title;
		this.eng_title = eng_title;
		this.rank = rank;
		this.release_date = release_date;
		this.theater = theater;
		this.open_date = open_date;
		this.end_date = end_date;
		this.release_hour = release_hour;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	public String getEng_title() {
		return eng_title;
	}

	public void setEng_title(String eng_title) {
		this.eng_title = eng_title;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getRelease_date() {
		return release_date;
	}

	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}

	public String getTheater() {
		return theater;
	}

	public void setTheater(String theater) {
		this.theater = theater;
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

	public String getRelease_hour() {
		return release_hour;
	}

	public void setRelease_hour(String release_hour) {
		this.release_hour = release_hour;
	}

	@Override
	public String toString() {
		return "ScreenInfoDomain [m_num=" + m_num + ", m_title=" + m_title + ", eng_title=" + eng_title + ", rank="
				+ rank + ", release_date=" + release_date + ", theater=" + theater + ", open_date=" + open_date
				+ ", end_date=" + end_date + ", release_hour=" + release_hour + "]";
	}

	

	

}//class
