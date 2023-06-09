package kr.co.sist.prj3.admin.review.vo;

public class ReviewSearchVO {

	private String search; //검색어
	private String search_type; //검색 옵션
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getSearch_type() {
		return search_type;
	}
	public void setSearch_type(String search_type) {
		this.search_type = search_type;
	}
	@Override
	public String toString() {
		return "ReviewSearchVO [search=" + search + ", search_type=" + search_type + "]";
	}
	
}//class
