package kr.co.sist.prj3.admin.dashboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.admin.dashboard.dao.DashBoardDAO;
import kr.co.sist.prj3.admin.dashboard.domain.DashBoardDomain;

@Component
public class DashBoardService {

	@Autowired(required = false)
	private DashBoardDAO dbDAO;
	
	/**
	 * ¿À´Ã È¸¿ø °¡ÀÔ
	 * @author KT
	 */
	public int cntJoinService() {
		
		int result=0;
		result = dbDAO.selectCntJoin();
		return result;
		
	}//cntJoinService

	
	/**
	 * ¿À´Ã È¸¿ø Å»Åð
	 * @author KT
	 */
	public int cntQuitService( ) {
		
		int result=0;
		result = dbDAO.selectCntQuit();
		return result;
	}//cntQuitService

	
	

	/**
	 * ¿À´Ã µî·ÏµÈ ¿µÈ­
	 * @author KT
	 */
	public int cntMoviesService( ) {
		int result=0;
		result = dbDAO.selectCntMovies();
		return result;
	}//cntMoviesService

	
	/**
	 * ÇöÀç »ó¿µ ÁßÀÎ ¿µÈ­
	 * @author KT
	 */
	public int cntOnGoingService ( ) {
		int result=0;
		result = dbDAO.selectCntOnGoing();
		return result;
	}//cntOnGoingService

	
	
	/**
	 * ¿À´Ã ¿¹¸ÅÀ² 1À§ ¿µÈ­
	 * @author KT
	 */
	public DashBoardDomain topReservationService ( ) {
		DashBoardDomain result = new DashBoardDomain();
		result = dbDAO.selectTopRate();
		return result;
	}//topReservationService

	
	/**
	 * ÃÑ È¸¿ø¼ö
	 * @return
	 */
	public int cntTotalUsersService( ) {
		int result=0;
		result = dbDAO.selectCntTotalUsers();
		return result;
	}//cntTotalUsersService

	
	
	/**
	 * ÃÑ ¿µÈ­¼ö
	 * @return
	 */
	public int cntTotalMoviesService ( ) {
		int result=0;
		result = dbDAO.selectCntTotalMovies();
		return result;
	}//cntTotalMoviesService

	
	
	
	/**
	 * ÃÑ ¸®ºä¼ö
	 * @return
	 */
	public int cntTotalReviewsService ( ) {
		int result=0;
		result = dbDAO.selectCntTotalReviews();
		return result;
	}//cntTotalReviewsService

	
	/**
	 * ÃÑ ÇÑÁÙÆò
	 * @return
	 */
	public int cntTotalGradesService ( ) {
		int result=0;
		result = dbDAO.selectCntTotalGrades();
		return result;
	}//cntTotalGradesService
	
	
	
}//class
