package kr.co.sist.prj3.user.review.domain;

public class ReviewWriteDomain {

	private String title;
	private String content;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ReviewWriteDomain [title=" + title + ", content=" + content + "]";
	}
	
}//class
