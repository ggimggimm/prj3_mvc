package kr.co.sist.prj3.user.total_info.domain;

public class CommInfoDomain {
	
	private int m_num;
	private String poster, m_title, eng_title, genre, country, run_time, rank, m_grade, release_date;
	
	public CommInfoDomain() {
		super();
	}

	public CommInfoDomain(int m_num, String poster, String m_title, String eng_title, String genre, String country,
			String run_time, String rank, String m_grade, String release_date) {
		super();
		this.m_num = m_num;
		this.poster = poster;
		this.m_title = m_title;
		this.eng_title = eng_title;
		this.genre = genre;
		this.country = country;
		this.run_time = run_time;
		this.rank = rank;
		this.m_grade = m_grade;
		this.release_date = release_date;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
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

	public String getEng_title() {
		return eng_title;
	}

	public void setEng_title(String eng_title) {
		this.eng_title = eng_title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getRun_time() {
		return run_time;
	}

	public void setRun_time(String run_time) {
		this.run_time = run_time;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getM_grade() {
		return m_grade;
	}

	public void setM_grade(String m_grade) {
		this.m_grade = m_grade;
	}

	public String getRelease_date() {
		return release_date;
	}

	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}

	@Override
	public String toString() {
		return "CommInfoDomain [m_num=" + m_num + ", poster=" + poster + ", m_title=" + m_title + ", eng_title="
				+ eng_title + ", genre=" + genre + ", country=" + country + ", run_time=" + run_time + ", rank=" + rank
				+ ", m_grade=" + m_grade + ", release_date=" + release_date + "]";
	}

	


	
}
