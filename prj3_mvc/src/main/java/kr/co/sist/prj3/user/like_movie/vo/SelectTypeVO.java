package kr.co.sist.prj3.user.like_movie.vo;

public class SelectTypeVO {

	private String user_id, select_type;
	private int m_num;

	public SelectTypeVO() {
	}

	public SelectTypeVO(String user_id, String select_type, int m_num) {
		super();
		this.user_id = user_id;
		this.select_type = select_type;
		this.m_num = m_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getSelect_type() {
		return select_type;
	}

	public void setSelect_type(String select_type) {
		this.select_type = select_type;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	@Override
	public String toString() {
		return "SelectTypeVO [user_id=" + user_id + ", select_type=" + select_type + ", m_num=" + m_num + "]";
	}

}// class
