package kr.co.sist.prj3.user.review.vo;

/**
 * 영화에 대한 모든 리뷰 검색
 * @author kt
 */
public class ReviewSearchVO {

	private int m_num; //영화번호
	private String search, search_type; //검색어, 검색옵션
	
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
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
		return "ReviewSearchVO [m_num=" + m_num + ", search=" + search + ", search_type=" + search_type
				+ ", getM_num()=" + getM_num() + ", getSearch()=" + getSearch() + ", getSearch_type()="
				+ getSearch_type() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
}//class
