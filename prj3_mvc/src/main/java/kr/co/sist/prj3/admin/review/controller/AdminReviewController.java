package kr.co.sist.prj3.admin.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.prj3.admin.review.service.AdminReviewService;
import kr.co.sist.prj3.admin.review.vo.ReviewSearchVO;

@Controller
public class AdminReviewController {

	@Autowired(required = false)
	private AdminReviewService arss;

	/**
	 * 관리자 
	 * 리뷰 리스트 현황판 보여주기 + 검색기능
	 * 2023.05.19
	 * @author KT
	 */
	@RequestMapping(value = "/review_manage.do", method = {RequestMethod.GET,RequestMethod.POST} )
	public String showReviewList(ReviewSearchVO rsVO, Model model) {
		
		String url = "";
		
		model.addAttribute("reviewList",arss.showReviewList(rsVO));
		url = "/review/review_manage";
		
		return url;
	}//showReviewList
	
	/**
	 * 관리자
	 * 해당 리뷰 삭제 버튼
	 * 2023.05.20
	 * @author KT
	 */
	@GetMapping("/review_delete.do")
	public String deleteReview(int rv_num){
		
		
		arss.deleteReview(rv_num);
		
		return "forward:/review_manage.do";
	}//deleteReview
	

	public String showReviewComments(int rvNum, Model model) {
		
		return "";
	}//showReviewComments
	
}//class
