package kr.co.sist.prj3.user.total_info.vo;

public class GradeVO {

	private int m_num, m_grade, g_num;
	private String comments, nick_name, user_id;
	
	public GradeVO() {
		super();
	}

	public GradeVO(int m_num, int m_grade, int g_num, String comments, String nick_name, String user_id) {
		super();
		this.m_num = m_num;
		this.m_grade = m_grade;
		this.g_num = g_num;
		this.comments = comments;
		this.nick_name = nick_name;
		this.user_id = user_id;
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

	public int getG_num() {
		return g_num;
	}

	public void setG_num(int g_num) {
		this.g_num = g_num;
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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "GradeVO [m_num=" + m_num + ", m_grade=" + m_grade + ", g_num=" + g_num + ", comments=" + comments
				+ ", nick_name=" + nick_name + ", user_id=" + user_id + "]";
	}

	
	
	
}
