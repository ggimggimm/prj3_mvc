package kr.co.sist.prj3.user.resmovie.vo;

import java.util.Arrays;

public class ReservationVO {
	
	private String start_time, user_id, input_date;
	private String[] seatData;
	private int s_num, r_num, m_num, watch_date, h_seat, v_seat, people, price;
	private double r_rate;
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
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
	public String[] getSeatData() {
		return seatData;
	}
	public void setSeatData(String[] seatData) {
		this.seatData = seatData;
	}
	public int getS_num() {
		return s_num;
	}
	public void setS_num(int s_num) {
		this.s_num = s_num;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public int getWatch_date() {
		return watch_date;
	}
	public void setWatch_date(int watch_date) {
		this.watch_date = watch_date;
	}
	public int getH_seat() {
		return h_seat;
	}
	public void setH_seat(int h_seat) {
		this.h_seat = h_seat;
	}
	public int getV_seat() {
		return v_seat;
	}
	public void setV_seat(int v_seat) {
		this.v_seat = v_seat;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getR_rate() {
		return r_rate;
	}
	public void setR_rate(double r_rate) {
		this.r_rate = r_rate;
	}
	@Override
	public String toString() {
		return "ReservationVO [start_time=" + start_time + ", user_id=" + user_id + ", input_date=" + input_date
				+ ", seatData=" + Arrays.toString(seatData) + ", s_num=" + s_num + ", r_num=" + r_num + ", m_num="
				+ m_num + ", watch_date=" + watch_date + ", h_seat=" + h_seat + ", v_seat=" + v_seat + ", people="
				+ people + ", price=" + price + ", r_rate=" + r_rate + "]";
	}
	
	
	
	
	
	

	

}//class
