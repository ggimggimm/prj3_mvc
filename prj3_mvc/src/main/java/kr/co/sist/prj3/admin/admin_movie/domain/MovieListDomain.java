package kr.co.sist.prj3.admin.admin_movie.domain;

import java.sql.Date;

public class MovieListDomain {

	private String m_title, d_name, genre, rank, release_date, screen_state;
	private Date m_reg_date;
	private int m_num;
	
	public MovieListDomain() {
	}

	public MovieListDomain(String m_title, String d_name, String genre, String rank, String release_date,
			String screen_state, Date m_reg_date, int m_num) {
		super();
		this.m_title = m_title;
		this.d_name = d_name;
		this.genre = genre;
		this.rank = rank;
		this.release_date = release_date;
		this.screen_state = screen_state;
		this.m_reg_date = m_reg_date;
		this.m_num = m_num;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
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

	public String getScreen_state() {
		return screen_state;
	}

	public void setScreen_state(String screen_state) {
		this.screen_state = screen_state;
	}

	public Date getM_reg_date() {
		return m_reg_date;
	}

	public void setM_reg_date(Date m_reg_date) {
		this.m_reg_date = m_reg_date;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	@Override
	public String toString() {
		return "MovieListDomain [m_title=" + m_title + ", d_name=" + d_name + ", genre=" + genre + ", rank=" + rank
				+ ", release_date=" + release_date + ", screen_state=" + screen_state + ", m_reg_date=" + m_reg_date
				+ ", m_num=" + m_num + "]";
	}

	
	
}
