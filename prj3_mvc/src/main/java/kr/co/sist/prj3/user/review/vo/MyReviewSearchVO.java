package kr.co.sist.prj3.user.review.vo;

/**
 * 나의 리뷰 검색
 * @author kt
 */
public class MyReviewSearchVO {

	private String user_id, search; 
	private int search_type; //아이디, 검색어, 검색옵션
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public int getSearch_type() {
		return search_type;
	}
	public void setSearch_type(int search_type) {
		this.search_type = search_type;
	}
	@Override
	public String toString() {
		return "MyReviewSearchVO [user_id=" + user_id + ", search=" + search + ", search_type=" + search_type + "]";
	}

	
	
	
	
	
}//class
