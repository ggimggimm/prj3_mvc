package kr.co.sist.prj3.user.review.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.review.domain.MyReviewDomain;
import kr.co.sist.prj3.user.review.domain.ReviewBoardDomain;
import kr.co.sist.prj3.user.review.domain.ReviewInfoDomain;
import kr.co.sist.prj3.user.review.domain.ReviewLikeUserDomain;
import kr.co.sist.prj3.user.review.domain.ReviewWriteDomain;
import kr.co.sist.prj3.user.review.vo.LikeVO;
import kr.co.sist.prj3.user.review.vo.MyReviewSearchVO;
import kr.co.sist.prj3.user.review.vo.ReviewModifyVO;
import kr.co.sist.prj3.user.review.vo.ReviewSearchVO;
import kr.co.sist.prj3.user.review.vo.WriteReviewVO;

@Component
public class UserReviewDAO {

	/**
	 * 유저 해당 영화에 대한 리뷰 리스트 보여주기 + 검색기능 2023.05.20
	 * 
	 * @author KT
	 */
	public List<ReviewBoardDomain> selectSearchReview(ReviewSearchVO rsVO) throws PersistenceException {
		List<ReviewBoardDomain> list = new ArrayList<ReviewBoardDomain>();

		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. handler 쿼리문 수행
		if (rsVO.getSearch_type() == null || rsVO.getSearch() == null) { // 검색 유형 정해지지 않음
			//rsVO.setM_num(2);
			list = ss.selectList("kr.co.sist.prj3.reviewListMapper.reviewUserList", rsVO);
		} else {
			list = ss.selectList("kr.co.sist.prj3.reviewListMapper.reviewUserList", rsVO);
		} // end else

		// 3. 조회결과 처리

		// 4. MyBatis Handler 닫기
		if (ss != null) {
			ss.close();
		} // end if

		return list;
	}// selectSearchReview

	/**
	 * 유저 해당 영화에 대한 리뷰 !작성! 2023.05.21
	 * 
	 * @author KT
	 */
	public int insertReview(WriteReviewVO wrVO) {

		int cnt = 0;

		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. handler 쿼리문 수행
		cnt = ss.delete("kr.co.sist.prj3.reviewMapper.insertReview", wrVO);
		
		// 3. 조회결과 처리
		if (cnt == 1) {
			ss.commit();
		} // end if

		// 4. MyBatis Handler 닫기
		if (ss != null) {
			ss.close();
		} // end if

		return cnt;

	}// insertReview

	/**
	 * 유저 해당 영화에 대한 리뷰 !삭제! 2023.05.22
	 * 
	 * @author KT
	 */
	public int deleteReview(int rv_num) {
		
		int cnt = 0;
		
		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		// 2. handler 쿼리문 수행
		cnt = ss.delete("kr.co.sist.prj3.reviewMapper.deleteReview", rv_num);

		// 3. 조회결과 처리
		if (cnt == 1) {
			ss.commit();
		} // end if
		
		// 4. MyBatis Handler 닫기
		if (ss != null) {
			ss.close();
		} // end if
		
		return cnt;
		
	}// insertReview

	/**
	 * 유저 해당 영화에 대한 리뷰 !조회! 2023.05.21
	 * 
	 * @author KT
	 */
	public ReviewWriteDomain selectReview(int rv_num) {
		
		ReviewWriteDomain rwd = null;
		
		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		// 2. handler 쿼리문 수행
		rwd = ss.selectOne("kr.co.sist.prj3.reviewMapper.selectReview", rv_num);
		
		// 3. 조회결과 처리
		
		// 4. MyBatis Handler 닫기
		if (ss != null) {
			ss.close();
		} // end if
		
		return rwd;
	}//selectReview
	
	/**
	 * 유저 해당 영화에 대한 리뷰 !수정! 2023.05.21
	 * 
	 * @author KT
	 */
	public int updateReview(ReviewModifyVO rmVO) {

		int cnt = 0;

		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. handler 쿼리문 수행
		cnt = ss.update("kr.co.sist.prj3.reviewMapper.updateReview", rmVO);
		
		// 3. 조회결과 처리
		if (cnt == 1) {
			ss.commit();
		} // end if

		// 4. MyBatis Handler 닫기
		if (ss != null) {
			ss.close();
		} // end if

		return cnt;

	}// updateReview

	
	/**
	 * 유저
	 * 클릭한 리뷰제목 리뷰 정보 보여주기
	 * 2023.05.21
	 * @author KT
	 */
	  public ReviewInfoDomain selectReview(LikeVO lVO) {
	  
		ReviewInfoDomain rid = null;
		  
		//1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. handler 쿼리문 수행
//		if (lVO.getUser_id()==null) { 
//			rid = ss.selectOne("kr.co.sist.prj3.reviewPostMapper.reviewInfo");
//		} else {
//			rid = ss.selectOne("kr.co.sist.prj3.reviewPostMapper.reviewInfo",lVO);
//		}//end else
		
		// 기존에 되던
		rid = ss.selectOne("kr.co.sist.prj3.reviewPostMapper.reviewInfo",lVO);
		
		
		//3. 조회결과 처리
		
		//4. MyBatis Handler 닫기
		if( ss!= null) {ss.close();}//end if
	  
		return rid;
	  
	  }//selectReview
	 
	  /**
	 * 유저
	 * 제목 클릭한 리뷰 좋아요 눌렀는지 보여주기
	 * 2023.05.22
	 * @author KM
	 */
	public String selectLikeStatus(LikeVO lVO) {

		String result = "";

		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		result = ss.selectOne("selectLikeStatus", lVO);

		// 4. 연결 끊기
		if (ss != null) { 	ss.close();		} // end if

		return result;
	}// selectLikeStatus

	/**
	 * 유저
	 * 좋아요 개수 보여주기
	 * 2023.05.22
	 * @author KM
	 */
	public int selectCntLike ( int rv_num ) {
		
		int cnt = 0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		cnt = ss.selectOne("selectLikes", rv_num);		
		// 3. transaction 완료하기
		
				
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
				
		return cnt;
	}//selectCntLike

	
	/**
	 * 유저
	 * 좋아요 누르기
	 * 2023.05.22
	 * @author KM
	 */
	public int insertLike(LikeVO lVO) {
		
		int cnt = 0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		cnt = ss.insert("insertLike", lVO);		
		
		//3. transaction 완료하기
				if(cnt==1) {
					ss.commit();
				}
				
		//4. 연결 끊기
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
	}//insertLike
	
	/**
	 * 유저
	 * 좋아요 해제
	 * 2023.05.22
	 * @author KM
	 */
	public int deleteLike(LikeVO lVO) {

		int cnt = 0;

		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		cnt = ss.delete("deleteLike", lVO);

		// 3. transaction 완료하기
		if (cnt == 1) {
			ss.commit();
		}

		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return cnt;
	}//deleteLike
	

	/**
	 * 유저
	 * 내가 쓴 리뷰 검색(마이페이지)
	 * 2023.05.22
	 * @author KM
	 */
	public List<MyReviewDomain> selectMyReview (MyReviewSearchVO mrsVO) {
		
		List<MyReviewDomain> list = new ArrayList<MyReviewDomain>();
		
		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		// 2. Handler를 사용하기
		
		list = ss.selectList("selectMyReview", mrsVO);

		// 4. 연결 끊기
		if (ss != null) { 	ss.close();		} // end if

		return list;
		
		
	}//selectMyReview

	/**
	 * 유저
	 * 리뷰 좋아요 누른 user들 보여주기
	 * 2023.05.22
	 * @author KT
	 */
	public List<ReviewLikeUserDomain> selectLikeUser(int rv_num) {
		List<ReviewLikeUserDomain> list = new ArrayList<ReviewLikeUserDomain>();
		
		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		// 2. handler 쿼리문 수행
		list = ss.selectList("kr.co.sist.prj3.reviewPostMapper.reviewLikeUser", rv_num);
		// 3. 조회결과 처리

		// 4. MyBatis Handler 닫기
		if (ss != null) {
			ss.close();
		} // end if
		
		return list;
	}//likeUser
	
	
	//////////////////////////////////////////////////////////////////
	
	/**
	 * 해당 리뷰 창에서 조회수 +1 증가
	 * 
	 * @param rvNum(리뷰번호)
	 */
	public int updateHits(int rv_num) {
		

		int cnt = 0;

		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		cnt = ss.update("hitsUp", rv_num);

		// 3. transaction 완료하기
		if (cnt == 1) {
			ss.commit();
		}

		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return cnt;
		
	}// updateHits
	
}// class