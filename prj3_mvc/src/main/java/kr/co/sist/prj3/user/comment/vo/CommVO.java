package kr.co.sist.prj3.user.comment.vo;

/**
 * ´ñ±Û VO<br>
 * ´ñ±Û¹øÈ£, ¾ÆÀÌµð, ´ñ±Û³»¿ë
 * @author user
 *
 */
public class CommVO {

	private int rv_num ;
	private String user_id, content;
	
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "CommVO [rv_num=" + rv_num + ", user_id=" + user_id + ", content=" + content + "]";
	}
	
	
	
	
}//class
