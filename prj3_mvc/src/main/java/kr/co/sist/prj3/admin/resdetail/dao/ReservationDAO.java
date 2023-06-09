package kr.co.sist.prj3.admin.resdetail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.admin.resdetail.domain.ReservationDomain;


/**
 * 에매현황 DAO
 * @author user
 */ 
@Component
public class ReservationDAO {
	
	
	//예매현황 select
	public List<ReservationDomain> reservationFrm(Model model){
		List<ReservationDomain> list=null;
		
		//1. MyBatis Handler얻기
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
				
		//2. 쿼리수행 후 결과 얻기
		list=ss.selectList("kr.co.sist.prj3.resDetail.selectResDetail",model);
				
		//3. MyBatis Handler 닫기
		if(ss!=null) {ss.close();}//end if
			
				
		
		return list;
	}//reservationFrm

	
}//class
