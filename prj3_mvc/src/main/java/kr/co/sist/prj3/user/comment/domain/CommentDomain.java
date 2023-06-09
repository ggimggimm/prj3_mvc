package kr.co.sist.prj3.user.comment.domain;

import java.util.List;

/**
 * 댓글 도메인<br>
 * 댓글번호, 프로필명, 닉네임, 댓글내용, 작성일
 * @author user
 *
 */
public class CommentDomain {

	private int com_num;
	private String profile, nick_name, content, input_date, user_id;
	private List<ReplyDomain> replies ;
	public int getCom_num() {
		return com_num;
	}
	public void setCom_num(int com_num) {
		this.com_num = com_num;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public List<ReplyDomain> getReplies() {
		return replies;
	}
	public void setReplies(List<ReplyDomain> replies) {
		this.replies = replies;
	}
	@Override
	public String toString() {
		return "CommentDomain [com_num=" + com_num + ", profile=" + profile + ", nick_name=" + nick_name + ", content="
				+ content + ", input_date=" + input_date + ", user_id=" + user_id + ", replies=" + replies + "]";
	}
	
	
	
	
	
}//class
