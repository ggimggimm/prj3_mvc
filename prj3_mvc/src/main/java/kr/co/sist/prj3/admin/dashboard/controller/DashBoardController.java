package kr.co.sist.prj3.admin.dashboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.prj3.admin.dashboard.service.DashBoardService;

@Controller
public class DashBoardController {

	@Autowired(required = false)
	private DashBoardService dbs;
	
	/**
	 * 대시보드
	 * kT,KM
	 */
	@GetMapping("/dashBoard.do")
	public String DashBoardProcess(Model model) {
		
		model.addAttribute("joinCnt",dbs.cntJoinService());
		model.addAttribute("quitCnt",dbs.cntQuitService());
		model.addAttribute("movieCnt",dbs.cntMoviesService());
		model.addAttribute("cntOnGoing",dbs.cntOnGoingService());
		model.addAttribute("rateTop",dbs.topReservationService());

		model.addAttribute("cntTotalUsers", dbs.cntTotalUsersService() );
	    model.addAttribute("cntTotalMovies", dbs.cntTotalMoviesService());
	    model.addAttribute("cntTotalReviews",dbs.cntTotalReviewsService() );
	    model.addAttribute("cntTotalGrades",dbs.cntTotalGradesService() );
		
		
		
		return "dashBoard/dashBoard";
	}//DashBoardProcess
	
	
}//class
