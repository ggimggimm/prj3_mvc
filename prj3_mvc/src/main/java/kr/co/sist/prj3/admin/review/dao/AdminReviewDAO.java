package kr.co.sist.prj3.admin.review.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.admin.review.domain.ReviewBoardDomain;
import kr.co.sist.prj3.admin.review.vo.ReviewSearchVO;

@Component
public class AdminReviewDAO {

	/**
	 * 관리자 
	 * 리뷰 리스트 현황판 보여주기 + 검색기능
	 * 2023.05.19
	 * @author KT
	 */
	public List<ReviewBoardDomain> selectReviewList(ReviewSearchVO rsVO) throws PersistenceException{
		List<ReviewBoardDomain> list = new ArrayList<ReviewBoardDomain>();
		
		//1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. handler 쿼리문 수행
		if (rsVO.getSearch_type()==null || rsVO.getSearch()==null) { // 검색 유형 정해지지 않음
			list=ss.selectList("kr.co.sist.prj3.reviewMapper.reviewList");
		} else {
			list=ss.selectList("kr.co.sist.prj3.reviewMapper.reviewListSearch",rsVO);
		}//end else
		
		//3. 조회결과 처리
		
		//4. MyBatis Handler 닫기
		if( ss!= null) {ss.close();}//end if

		return list;
	}//selectReviewList

	/**
	 * 관리자
	 * 해당 리뷰 삭제 버튼
	 * 2023.05.20
	 * @author KT
	 */
	public int deleteReview(int rv_num) {
		
		int cnt = 0;
		
		//1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. handler 쿼리문 수행
		cnt = ss.delete("kr.co.sist.prj3.reviewMapper.reviewDelete",rv_num);
		
		//3. 조회결과 처리
		if(cnt==1) {
			ss.commit();
		}//end if
		
		//4. MyBatis Handler 닫기
		if( ss!= null) {ss.close();}//end if
		
		return cnt;
	}//deleteReview

}//class
