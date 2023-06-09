package kr.co.sist.prj3.admin.review.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.admin.review.dao.AdminReviewDAO;
import kr.co.sist.prj3.admin.review.domain.ReviewBoardDomain;
import kr.co.sist.prj3.admin.review.vo.ReviewSearchVO;

@Component
public class AdminReviewService {

	@Autowired(required = false)
	private AdminReviewDAO arDAO;
	
	/**
	 * 관리자 
	 * 리뷰 리스트 현황판 보여주기 + 검색기능
	 * 2023.05.19
	 * @author KT
	 */
	public List<ReviewBoardDomain> showReviewList(ReviewSearchVO rsVO){
		List<ReviewBoardDomain> list = new ArrayList<ReviewBoardDomain>();
		
		list = arDAO.selectReviewList(rsVO);
		
		return list;
	}//showReviewList
	
	
	/**
	 * 관리자
	 * 해당 리뷰 삭제 버튼
	 * 2023.05.20
	 * @author KT
	 */
	public boolean deleteReview(int rv_num) {
		
		int cnt=arDAO.deleteReview(rv_num);
		
		return cnt==1;
	}//deleteReview

}//class
