package kr.co.sist.prj3.user.resmovie.domain;

public class SeatsDomain {
	
	private int h_seat, v_seat;

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

	@Override
	public String toString() {
		return "SeatsDomain [h_seat=" + h_seat + ", v_seat=" + v_seat + "]";
	}
	
	

}
