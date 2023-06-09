package kr.co.sist.prj3.user.resmovie.vo;

public class ReservationInfoVO {
	
	private String start_time, day_week;
	private int watch_date, m_num,current_year,current_month;
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getDay_week() {
		return day_week;
	}
	public void setDay_week(String day_week) {
		this.day_week = day_week;
	}
	public int getWatch_date() {
		return watch_date;
	}
	public void setWatch_date(int watch_date) {
		this.watch_date = watch_date;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public int getCurrent_year() {
		return current_year;
	}
	public void setCurrent_year(int current_year) {
		this.current_year = current_year;
	}
	public int getCurrent_month() {
		return current_month;
	}
	public void setCurrent_month(int current_month) {
		this.current_month = current_month;
	}
	
	@Override
	public String toString() {
		return "ReservationInfoVO [start_time=" + start_time + ", day_week=" + day_week + ", watch_date=" + watch_date
				+ ", m_num=" + m_num + ", current_year=" + current_year + ", current_month=" + current_month + "]";
	}
	
	
	

}//class
