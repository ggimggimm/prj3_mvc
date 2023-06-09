package kr.co.sist.prj3.user.profile.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.profile.domain.MyProfileDomain;
import kr.co.sist.prj3.user.profile.vo.ProfileModifyVO;

@Component
public class ProfileDAO {

	
	/**
	 * 닉네임으로 검색 
	 * @param nickName
	 * @return
	 */
	public String selectChkNick (String nick_name) {
		
		
		String selectedNick="";
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2.핸들러 사용하기 - 쿼리문 수행하기
		selectedNick = ss.selectOne("selectNickDup", nick_name);
		
		//3.조회결과 처리
		//4.MyBatis Handler 닫기
		if(ss!=null) {ss.close();}
		
		return selectedNick;
	
	}//selectChkNick

	
	
	
	/**
	 * 프로필, 닉네임, 자기소개 수정
	 * @param pVO
	 * @return
	 */
	public int updateProfile(ProfileModifyVO pVO) {

		int cnt=0;
		
		// 1.MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		// 2. 조작method 호출하여 결과 얻기

		cnt = ss.update("updateProfile", pVO);
		System.out.println(cnt);
		// 3.transaction 처리 - 이 쿼리로 변경될 수 있는 행은 최대 1개

		if (cnt == 1) {
			ss.commit();
		}

		// 4. 핸들러 닫기

		if (ss != null) {
			ss.close();
		}

		return cnt;

	}// updateProfile
	
	public MyProfileDomain selectProfile(String user_id) {
		
		MyProfileDomain profile = null;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		profile = ss.selectOne("selectProfile", user_id);		
		
				
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
				
		return profile;
		
		
	}//selectProfile
	
	
	
}//class
