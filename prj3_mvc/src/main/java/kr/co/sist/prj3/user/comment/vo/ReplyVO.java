package kr.co.sist.prj3.user.comment.vo;

/**
 * ´ë´ñ±ÛVO<br>
 * ´ñ±Û¹øÈ£, ¾ÆÀÌµğ, ´ë´ñ±Û³»¿ë
 * @author user
 *
 */
public class ReplyVO {
	
	
	private int com_num;
	private String user_id,content;
	public int getCom_num() {
		return com_num;
	}
	public void setCom_num(int com_num) {
		this.com_num = com_num;
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
		return "ReplyVO [com_num=" + com_num + ", user_id=" + user_id + ", content=" + content + "]";
	}
	
	
	
}//class
