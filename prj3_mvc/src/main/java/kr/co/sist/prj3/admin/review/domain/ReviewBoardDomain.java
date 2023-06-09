package kr.co.sist.prj3.admin.review.domain;

public class ReviewBoardDomain {

	private String title; //제목
	private String user_id; // 유저아이디
	private String input_date; //작성일
	private int rv_num; // 리뷰번호
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	} 
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	@Override
	public String toString() {
		return "ReviewBoardDomain [title=" + title + ", user_id=" + user_id + ", input_date=" + input_date + ", rv_num="
				+ rv_num + "]";
	}
	
}//class
