package kr.co.sist.prj3.user.review.domain;

/**
 * 내가 쓴 리뷰 게시판 정보
 * @author km
 */
public class MyReviewDomain {

	private int rv_num; //리뷰번호
	private int m_num; //영화번호
	private int hits; //조회수
	
	private String title; //리뷰제목
	private String m_title; //영화제목
	private String eng_title; //영어제목
	private String d_name; //감독명
	private String script; //각본가
	private String poster; //포스터
	private String input_date; //작성일
	
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
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
	public String getEng_title() {
		return eng_title;
	}
	public void setEng_title(String eng_title) {
		this.eng_title = eng_title;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getScript() {
		return script;
	}
	public void setScript(String script) {
		this.script = script;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	
	
	
	
	
	
	//영화 등급 추가??
	
}//class
