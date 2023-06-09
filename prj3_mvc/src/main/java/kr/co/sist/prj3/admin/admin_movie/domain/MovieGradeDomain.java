package kr.co.sist.prj3.admin.admin_movie.domain;

public class MovieGradeDomain {

	private int  g_num, m_num, m_grade;
	private String  m_title, user_id, comments, input_date, nick_name;
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
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
	public String getM_title() {
		return m_title;
	}
	public void setM_title(String m_title) {
		this.m_title = m_title;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	@Override
	public String toString() {
		return "MovieGradeDomain [g_num=" + g_num + ", m_num=" + m_num + ", m_grade=" + m_grade + ", m_title=" + m_title
				+ ", user_id=" + user_id + ", comments=" + comments + ", input_date=" + input_date + ", nick_name="
				+ nick_name + "]";
	}
	
	

}
