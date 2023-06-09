package kr.co.sist.prj3.admin.dashboard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.admin.dashboard.domain.DashBoardDomain;

@Component
public class DashBoardDAO {

	/**
	 * 오늘 회원 가입
	 * @return KT
	 */
	public int selectCntJoin() {
		
		int result=0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		result = ss.selectOne("selectJoinCnt");		
		
		//3. transaction 완료하기
				
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
				
		return result;
		
	}//selectCntJoin

	
	/**
	 * 오늘 회원 탈퇴
	 * @return KT
	 */
	public int selectCntQuit( ) {
		
		int result=0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		result = ss.selectOne("selectQuitCnt");		
		
		//3. transaction 완료하기
				
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
				
		return result;
	}//selectCntQuit

	
	

	/**
	 * 오늘 등록된 영화
	 * @author KT
	 */
	public int selectCntMovies ( ) {
		int result=0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		result = ss.selectOne("selectMovieCnt");		
		
		//3. transaction 완료하기
				
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
		
		return result;
	}//selectCntMovies

	
	/**
	 * 현재 상영 중인 영화
	 * @author KT
	 */
	public int selectCntOnGoing ( ) {
		int result=0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		result = ss.selectOne("selectCntOnGoing");		
		
		//3. transaction 완료하기
				
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
		
		return result;
	}//selectCntOnGoing

	/**
	 * 현재 상영 중인 영화
	 * @author KT
	 */
	public DashBoardDomain selectTopRate ( ) {
		DashBoardDomain result = new DashBoardDomain();
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		result = ss.selectOne("selectRateTop");		
		
		//3. transaction 완료하기
		
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
		
		return result;
	}//selectCntOnGoing

	
	
	/**
	 * 오늘 예매율 1위 영화
	 * @author KM
	 */
	public String selectTopReservation  ( ) {
		String result="";
		return result;
	}//selectCntTopReservation

	
	/**
	 * 총 회원수
	 * @author KM
	 */
	public int selectCntTotalUsers( ) {
		int result = 0;

		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		result = ss.selectOne("selectTotalCntMember");

		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return result;
	}//selectCntTotalUsers

	
	
	/**
	 * 총 영화수
	 * @author KM
	 */
	public int selectCntTotalMovies  ( ) {
		int result = 0;

		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		result = ss.selectOne("selectTotalCntMovie");

		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return result;
	}//selectCntTotalMovies

	
	
	
	/**
	 * 총 리뷰수
	 * @author KM
	 */
	public int selectCntTotalReviews  ( ) {
		int result = 0;

		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		result = ss.selectOne("selectTotalCntReview");

		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return result;
	}//selectCntTotalReviews

	
	/**
	 * 총 한줄평
	 * @author KM
	 */
	public int selectCntTotalGrades  ( ) {
		int result = 0;

		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		result = ss.selectOne("selectTotalCntGrade");

		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return result;
	}//selectCntTotalGrades
	
	
	
	
}//class
