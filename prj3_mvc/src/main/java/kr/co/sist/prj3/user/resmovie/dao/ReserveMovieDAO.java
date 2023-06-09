package kr.co.sist.prj3.user.resmovie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.resmovie.domain.ReserveMovieDomain;
import kr.co.sist.prj3.user.resmovie.domain.SeatsDomain;
import kr.co.sist.prj3.user.resmovie.vo.ReservationInfoVO;
import kr.co.sist.prj3.user.resmovie.vo.ReservationVO;

@Component
public class ReserveMovieDAO {
	
	public List<ReserveMovieDomain> selectRes() {
		List<ReserveMovieDomain> list=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list=ss.selectList("kr.co.sist.prj3.reservationMapper.selectMovie");
		if(ss != null) {ss.close();}//end if
		
		return list;
	}//selectRes
	
	public ReserveMovieDomain selectInfo(int m_num) {
		ReserveMovieDomain rmDomain=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		rmDomain = ss.selectOne("kr.co.sist.prj3.reservationMapper.selectMovieInfo",m_num);
		
		if(ss != null) {ss.close();}//end if
		
		return rmDomain;
	}//selectInfo
	
	public ReserveMovieDomain selectHour(int m_num) {
		ReserveMovieDomain rmDomain=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		rmDomain = ss.selectOne("kr.co.sist.prj3.reservationMapper.selectMovieHour",m_num);
		
		if(ss != null) {ss.close();}//end if
		
		
		return rmDomain;
	}//selectHour
	
	public List<SeatsDomain> selectSeats(ReservationInfoVO riVO) {
		List<SeatsDomain> list=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list=ss.selectList("kr.co.sist.prj3.reservationMapper.selectSeatsInfo", riVO);
		
		if(ss != null) {ss.close();}//end if
		
		return list;
	}//selectSeats
	
	public ReserveMovieDomain selectMovie(int m_num) {
		ReserveMovieDomain rmDomain=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		rmDomain=ss.selectOne("kr.co.sist.prj3.reservationMapper.selectResMovie", m_num);
		
		if(ss != null) {ss.close();}//end if
		
		return rmDomain;
	}//selectMovie
	
	public int selectResKey() {
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		int key=ss.selectOne("kr.co.sist.prj3.reservationMapper.selectResKey");
		
		if(ss != null) {ss.close();}//end if
		
		return key;
	}//selectResKey
	
	public void insertReservation(ReservationVO rVO) {
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		int cnt=ss.insert("kr.co.sist.prj3.reservationMapper.insertReservation", rVO);
		
		if(cnt == 1) {ss.commit();}//end if
		
		if(ss != null) {ss.close();}//end if
		
	}//insertReservation
	
	public void insertSeats(ReservationVO rVO) {
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		int cnt=0;
		
		// rVO 안의 배열을 가지고 문자열을 자른 후 배열의 수만큼 insert 하자~
		String seatData[]=rVO.getSeatData();
		
		for(String seatInfo : seatData) {
			int h_seat=Integer.parseInt(seatInfo.substring(1, 2));
			int v_seat=Integer.parseInt(seatInfo.substring(2));
			
			rVO.setH_seat(h_seat);
			rVO.setV_seat(v_seat);
			
			cnt=ss.insert("kr.co.sist.prj3.reservationMapper.insertSeats", rVO);
			if(cnt == 1) {ss.commit();}//end if
			
		}//end for
		
		
		if(ss != null) {ss.close();}//end if
		
	}//insertSeats
	
	public int selectResSeat(ReservationVO rVO) {
		int resSeat=0;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		
		resSeat = ss.selectOne("kr.co.sist.prj3.reservationMapper.selectResSeat", rVO);
		
		
		
		if(ss != null) {ss.close();}//end if
		
		return resSeat;
	}//selectResSeat
	
	
	public int selectPeriod(ReservationVO rVO) {
		
		int resPeriod=0;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		System.out.println("----------------------------------Periodmnum : "+ rVO.getM_num());
		
		resPeriod = ss.selectOne("kr.co.sist.prj3.reservationMapper.selectPeriod", rVO);
		
		System.out.println("----------------------------------resPeriod : "+resPeriod);
		
		if(ss != null) {ss.close();}//end if
		
		return resPeriod;
		
	}//selectPeriod
	
	public int selectTime(ReservationVO rVO) {
		
		int resTime=0;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		
		resTime = ss.selectOne("kr.co.sist.prj3.reservationMapper.selectTime", rVO);
		
		
		if(ss != null) {ss.close();}//end if
		
		return resTime;
		
	}//selectTime
	
	public void insertRate(ReservationVO rVO) {
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		int cnt=ss.insert("insertRate",rVO);
		if(cnt == 1) {ss.commit();}//end if
		
		if(ss != null) {ss.close();}//end if
		
	}//insertRate

}//class
