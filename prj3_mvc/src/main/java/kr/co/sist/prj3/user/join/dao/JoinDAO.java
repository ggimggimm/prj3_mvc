package kr.co.sist.prj3.user.join.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.join.vo.UserVO;


@Component
public class JoinDAO {

	//회원 가입 
	public int insertUser( UserVO uVO) {
		int cnt = 0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		cnt = ss.insert("insertJoin", uVO);		
		
		//3. transaction 완료하기
				if(cnt==1) {
					ss.commit();
				}
				
		//4. 연결 끊기
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
	}//insertUser

	
	
	
	//id 중복확인 
	public String selectDupId( String user_id ) {
		
		String selectedId="";
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2.핸들러 사용하기 - 쿼리문 수행하기
		selectedId = ss.selectOne("selectIdDup", user_id);
		
		//3.조회결과 처리
		//4.MyBatis Handler 닫기
		if(ss!=null) {ss.close();}
		
		return selectedId;
		
	}

	
	//닉네임 중복확인
	public String selectDupNick( String nick_name ) {
		String selectedNick="";
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2.핸들러 사용하기 - 쿼리문 수행하기
		selectedNick = ss.selectOne("selectNickDup", nick_name);
		
		//3.조회결과 처리
		//4.MyBatis Handler 닫기
		if(ss!=null) {ss.close();}
		
		return selectedNick;
	
	}


	
		//이메일 중복확인
		public String selectDupEmail( String email ) {
			String selectedEmail="";
			
			//1.MyBatis 핸들러 얻기
			SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
			
			//2.핸들러 사용하기 - 쿼리문 수행하기
			selectedEmail = ss.selectOne("selectEmailDup", email);
			
			//3.조회결과 처리
			//4.MyBatis Handler 닫기
			if(ss!=null) {ss.close();}
			
			return selectedEmail;
		
		}
	
	
	
}//class
