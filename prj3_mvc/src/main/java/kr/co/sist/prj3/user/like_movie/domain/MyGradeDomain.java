package kr.co.sist.prj3.user.like_movie.domain;

public class MyGradeDomain {

	private String m_title, comments, nick_name, input_date;
	private int m_num, m_grade;
	
	public MyGradeDomain() {
	}

	public MyGradeDomain(String m_title, String comments, String nick_name, String input_date, int m_num, int m_grade) {
		super();
		this.m_title = m_title;
		this.comments = comments;
		this.nick_name = nick_name;
		this.input_date = input_date;
		this.m_num = m_num;
		this.m_grade = m_grade;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getInput_date() {
		return input_date;
	}

	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public int getM_grade() {
		return m_grade;
	}

	public void setM_grade(int m_grade) {
		this.m_grade = m_grade;
	}

	@Override
	public String toString() {
		return "MyGradeDomain [m_title=" + m_title + ", comments=" + comments + ", nick_name=" + nick_name
				+ ", input_date=" + input_date + ", m_num=" + m_num + ", m_grade=" + m_grade + "]";
	}

	

}// class
