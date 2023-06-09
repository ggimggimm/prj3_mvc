package kr.co.sist.prj3.admin.resdetail.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.admin.resdetail.dao.ReservationDAO;
import kr.co.sist.prj3.admin.resdetail.domain.ReservationDomain;

/**
 * 에매현황 Service
 * @author user
 */ 
@Component
public class ReservationService {
	
	@Autowired(required=false)
	private ReservationDAO rDAO;
	
	//예매현황 select
	public List<ReservationDomain> reservationService(){
		
		List<ReservationDomain> list=rDAO.reservationFrm(null);
		
		return list;
	}//reservationService

}//class
