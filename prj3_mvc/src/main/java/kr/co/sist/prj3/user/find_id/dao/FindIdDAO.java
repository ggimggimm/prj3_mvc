package kr.co.sist.prj3.user.find_id.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.find_id.domain.ResultIdDomain;
import kr.co.sist.prj3.user.find_id.vo.FindIdVO;

@Component
public class FindIdDAO {

	public ResultIdDomain selectFindId(FindIdVO fiVO) {
		ResultIdDomain rid = null;
		
		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. handler 쿼리문 수행
		rid = ss.selectOne("kr.co.sist.prj3.findIdMapper.findId", fiVO);

		
		
		// 3. 조회결과 처리

		// 4. MyBatis Handler 닫기
		if (ss != null) {
			ss.close();
		} // end if
		
		return rid;
		
	}//end selectFindId
}//class
