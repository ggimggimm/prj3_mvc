package kr.co.sist.prj3.admin.regscreen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.admin.regscreen.dao.ScreenRegDAO;
import kr.co.sist.prj3.admin.regscreen.domain.ScreenInfoDomain;
import kr.co.sist.prj3.admin.regscreen.vo.ScreenInfoVO;

/**
 * 상영정보등록 Servoce
 * @author user
 */
@Component
public class ScreenRegService {
	
	@Autowired(required=false)
	private ScreenRegDAO srDAO;
	
	
	//상용정보등록화면 select
	public ScreenInfoDomain screenInfoService(int m_num) {
		
		
		ScreenInfoDomain sid=srDAO.selectOneMovie(m_num);
		return sid;
	}//screenInfoService
	
	
	
	//상영등록 - 상영시간 update
	public int screenProcessService(ScreenInfoVO siVO) {
		int cnt=srDAO.updateScreen(siVO);
		
		return cnt;
	}//screenInfoService

}//class
