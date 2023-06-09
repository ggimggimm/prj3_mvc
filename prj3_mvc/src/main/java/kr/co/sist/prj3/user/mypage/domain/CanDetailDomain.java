package kr.co.sist.prj3.user.mypage.domain;

public class CanDetailDomain {
	
	private int r_num, price, watch_date;
	private String m_title, cancel_date;
	
	public CanDetailDomain() {
		super();
	}

	public CanDetailDomain(int r_num, int price, int watch_date, String m_title, String cancel_date) {
		super();
		this.r_num = r_num;
		this.price = price;
		this.watch_date = watch_date;
		this.m_title = m_title;
		this.cancel_date = cancel_date;
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

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	public String getCancel_date() {
		return cancel_date;
	}

	public void setCancel_date(String cancel_date) {
		this.cancel_date = cancel_date;
	}

	@Override
	public String toString() {
		return "CanDetailDomain [r_num=" + r_num + ", price=" + price + ", watch_date=" + watch_date + ", m_title="
				+ m_title + ", cancel_date=" + cancel_date + "]";
	}
	
	
	
	

}//class
