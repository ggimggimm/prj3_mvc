package kr.co.sist.prj3.user.review.domain;

/**
 * 해당 리뷰 정보
 * @author kt
 */
public class ReviewInfoDomain {

	private String title; //리뷰제목d
	private String m_title; //영화제목d
	private String nick_name; //닉네임d
	private String profile; //프로필d
	private String input_date; //작성일d
	private String profile_msg; //자기소개
	private String user_id; //아이디

	private int hits; //조회수
	private int like_total; //총 좋아요
	private int com_total; //총 댓글수
	
	private String content; //내용

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getInput_date() {
		return input_date;
	}

	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}

	public String getProfile_msg() {
		return profile_msg;
	}

	public void setProfile_msg(String profile_msg) {
		this.profile_msg = profile_msg;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getLike_total() {
		return like_total;
	}

	public void setLike_total(int like_total) {
		this.like_total = like_total;
	}

	public int getCom_total() {
		return com_total;
	}

	public void setCom_total(int com_total) {
		this.com_total = com_total;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ReviewInfoDomain [title=" + title + ", m_title=" + m_title + ", nick_name=" + nick_name + ", profile="
				+ profile + ", input_date=" + input_date + ", profile_msg=" + profile_msg + ", user_id=" + user_id
				+ ", hits=" + hits + ", like_total=" + like_total + ", com_total=" + com_total + ", content=" + content
				+ "]";
	}

	
	
}//class
