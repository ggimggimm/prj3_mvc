package kr.co.sist.prj3.user.total_info.vo;

public class LikeGradeVO {

	private int m_num, g_num;
	private String user_id;
	public LikeGradeVO() {
		super();
	}
	public LikeGradeVO(int m_num, int g_num, String user_id) {
		super();
		this.m_num = m_num;
		this.g_num = g_num;
		this.user_id = user_id;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "LikeGradeVO [m_num=" + m_num + ", g_num=" + g_num + ", user_id=" + user_id + "]";
	}
	
	

}
