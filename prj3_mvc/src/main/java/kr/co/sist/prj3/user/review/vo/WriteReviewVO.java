package kr.co.sist.prj3.user.review.vo;

/**
 * ∏Æ∫‰ ¿€º∫
 * @author kt
 */
public class WriteReviewVO {

	private String user_id, title;
	private String content;
	private int m_num;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	@Override
	public String toString() {
		return "WriteReviewVO [user_id=" + user_id + ", title=" + title + ", content=" + content + ", m_num=" + m_num
				+ "]";
	}

	
	
	
}//class
