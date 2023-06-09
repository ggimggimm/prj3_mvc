package kr.co.sist.prj3.user.review.domain;

/**
 * 리뷰 현황판 정보
 * @author kt
 */
public class ReviewBoardDomain {

	private String title; //리뷰제목
	private String nick_name; //닉네임
	private String input_date; //작성일
	private String user_id; //아이디
	private int hits; //조회수
	private int like_total; //총 좋아요
	private int rv_num; //리뷰번호
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	@Override
	public String toString() {
		return "ReviewBoardDomain [title=" + title + ", nick_name=" + nick_name + ", input_date=" + input_date
				+ ", user_id=" + user_id + ", hits=" + hits + ", like_total=" + like_total + ", rv_num=" + rv_num + "]";
	}

	
	
	
}//class
