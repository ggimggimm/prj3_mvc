package kr.co.sist.prj3.user.resmovie.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.resmovie.dao.ReserveMovieDAO;
import kr.co.sist.prj3.user.resmovie.domain.ReserveMovieDomain;
import kr.co.sist.prj3.user.resmovie.domain.SeatsDomain;
import kr.co.sist.prj3.user.resmovie.vo.ReservationInfoVO;
import kr.co.sist.prj3.user.resmovie.vo.ReservationVO;

@Component
public class ReserveMovieService {
	
	@Autowired(required = false)
	private ReserveMovieDAO rmDAO;
	
	public List<ReserveMovieDomain> showMovieTitle() {
		List<ReserveMovieDomain> list = new ArrayList<ReserveMovieDomain>();
		
		list=rmDAO.selectRes();
		
		return list;
	}//showMovieTitle
	
	
	public String showMovieDate(int m_num) {
		ReserveMovieDomain rmDomain=null;
		
		JSONObject jsonObj=new JSONObject();
		rmDomain= rmDAO.selectInfo(m_num);
		
		Calendar cal=new GregorianCalendar();
	      int year=cal.get(Calendar.YEAR);
	      int month=cal.get(Calendar.MONTH)+1;
	      int dayOfWeek=cal.get(Calendar.DAY_OF_WEEK);
	      String day="";
	      switch(dayOfWeek) {
	         case 1 : day="일";break;
	         case 2 : day="월";break;
	         case 3 : day="화";break;
	         case 4 : day="수";break;
	         case 5 : day="목";break;
	         case 6 : day="금";break;
	         default : day="토";break;
	      }//end switch
		
		
		String start=rmDomain.getOpen_date().substring(rmDomain.getOpen_date().lastIndexOf("-") + 1);
		String end=rmDomain.getEnd_date().substring(rmDomain.getEnd_date().lastIndexOf("-") + 1);
		
		jsonObj.put("open_date", start);
		jsonObj.put("end_date", end);
		jsonObj.put("year", year);
		jsonObj.put("month", month);
		jsonObj.put("day", day);
		
		
		return jsonObj.toJSONString();
	}//showMovieDate
	
	
	 public String showMovieTime(int m_num) { 
	 ReserveMovieDomain rmDomain=null;
	 String[] hours=null;
	 JSONObject jsonObj=new JSONObject();
	 JSONArray jsonArray=new JSONArray();
	 
	 rmDomain=rmDAO.selectHour(m_num);
	 
	 jsonObj.put("arrayFlag", false);
	 
	 //상영 시간이 복수일때
	 if(rmDomain.getRelease_hour().contains(",")) {
		 
		 jsonObj.put("arrayFlag", true);
		 hours=rmDomain.getRelease_hour().split(",");
	 
	 for(int i=0; i<hours.length; i++) {
		 
		 JSONObject jsonTemp=new JSONObject();
		 jsonTemp.put("hour", hours[i]);
		 jsonArray.add(jsonTemp);
		 
		 
	 }//end for
	 jsonObj.put("hours", jsonArray);
	 
	 }else {
		 
	 jsonObj.put("hours", rmDomain.getRelease_hour());
	 
	 }//end else
	 
	 
	 return jsonObj.toJSONString();
	 }//showMovieTime
	 	
	public List<SeatsDomain> reservationService(ReservationInfoVO riVO) {
		List<SeatsDomain> list=null;
		
		list=rmDAO.selectSeats(riVO);
		
		return list;
	}//reservationService
	
	public int getKey() {
		
		int key=rmDAO.selectResKey();
		
		return key;
	}//getKey
	
	public ReserveMovieDomain showMovieInfo(int m_num) {
		ReserveMovieDomain rmDomain=null;
		
		rmDomain=rmDAO.selectMovie(m_num);
		
		return rmDomain;
	}//showMovieInfo
	
	public void addReservation(ReservationVO rVO) {
		
		rmDAO.insertReservation(rVO);
		
	}//addReservation
	
	public void addSeats(ReservationVO rVO) {
		
		rmDAO.insertSeats(rVO);
		
	}//addSeats
	
	public int showSeat(ReservationVO rVO) {
		int resSeat=0;
		
		resSeat = rmDAO.selectResSeat(rVO);
		
		return resSeat;
	}//showSeat
	
	public int showPeriod(ReservationVO rVO) {
		int resPeriod=0;
		
		resPeriod=rmDAO.selectPeriod(rVO);
		
		return resPeriod;
	}//showSeat
	
	public int showTime(ReservationVO rVO) {
		int resTime=0;
		
		resTime=rmDAO.selectTime(rVO);
		
		return resTime;
	}//showSeat
	
	public void addRate(ReservationVO rVO) {
		
		rmDAO.insertRate(rVO);
		
	}//addRate
	

	

}//class
