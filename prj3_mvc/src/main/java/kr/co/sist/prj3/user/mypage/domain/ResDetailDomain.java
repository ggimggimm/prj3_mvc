package kr.co.sist.prj3.user.mypage.domain;

public class ResDetailDomain {
	
	private String m_title, r_state;
	private int r_num, price, watch_date;
	public ResDetailDomain() {
		super();
	}
	public ResDetailDomain(String m_title, String r_state, int r_num, int price, int watch_date) {
		super();
		this.m_title = m_title;
		this.r_state = r_state;
		this.r_num = r_num;
		this.price = price;
		this.watch_date = watch_date;
	}
	public String getM_title() {
		return m_title;
	}
	public void setM_title(String m_title) {
		this.m_title = m_title;
	}
	public String getR_state() {
		return r_state;
	}
	public void setR_state(String r_state) {
		this.r_state = r_state;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getWatch_date() {
		return watch_date;
	}
	public void setWatch_date(int watch_date) {
		this.watch_date = watch_date;
	}
	@Override
	public String toString() {
		return "ResDetailDomain [m_title=" + m_title + ", r_state=" + r_state + ", r_num=" + r_num + ", price=" + price
				+ ", watch_date=" + watch_date + "]";
	}
	
	
	
	

}//class
