package kr.co.sist.prj3.admin.resdetail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.prj3.admin.resdetail.service.ReservationService;

/**
 * 에매현황 컨트롤러
 * @author user
 */ 
@Controller
public class AdminReservationController {
	
	@Autowired(required=false)
	private ReservationService rs;
	
	
	//예매현황화면
	@GetMapping("/reservation_detail.do")
	public String reservationFrm(Model model) {
		
		model.addAttribute("resDeatil",rs.reservationService());
		
		return "reservation_detail/reservation_detail";
	}//reservationFrm
	

}//class
