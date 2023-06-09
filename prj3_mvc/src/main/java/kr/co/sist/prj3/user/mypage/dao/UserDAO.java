package kr.co.sist.prj3.user.mypage.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.admin.regscreen.domain.ScreenInfoDomain;
import kr.co.sist.prj3.user.mypage.domain.ModifyInfoDomain;
import kr.co.sist.prj3.user.mypage.vo.ModifyInfoVO;

@Component
public class UserDAO {
	
	
	public boolean passProcess(String user_id,String pass) {
		boolean isPasswordCorrect = false;

	    // 1. MyBatisHandler 얻기
	    SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
	    
	    //Map<String, String> map=new HashMap<String, String>();
	    //map.put("user_id", user_id);
		
	    // 2. Handler 사용
		String selectPass = ss.selectOne("kr.co.sist.prj3.userMapper.selectUserInfo", user_id);
		
	    // 3. 데이터베이스에 저장된 비밀번호와 입력된 비밀번호 비교
	    if (selectPass != null && selectPass.equals(pass)) {
	        isPasswordCorrect = true;
	    }//end if

	    if (ss != null) { ss.close(); }//end if
	    
	    return isPasswordCorrect;
	}//passProcess
	
	//회원정보수정 값 select
	public ModifyInfoDomain selectMyInfo(String user_id) {
		ModifyInfoDomain mid=new ModifyInfoDomain();
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		mid=ss.selectOne("kr.co.sist.prj3.userMapper.selectMemberInfo", user_id);
		
		if(ss!=null) {ss.close();}//end if
		
		
		return mid;
	}//selectMyInfo
	
	
	//회원정보 수정
	public int updateInfo(ModifyInfoVO miVO) {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		cnt=ss.update("kr.co.sist.prj3.userMapper.updateMemberInfo",miVO);
		

		if(cnt==1) {ss.commit();}//end if
		
		if(ss!=null) {ss.close();}//end if
		
		return cnt;
	}//updateInfo
	
	
	//회원탈퇴
	public int updateQuitMember(String user_id) {
		int cnt=0;
		
		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		cnt = ss.update("kr.co.sist.prj3.userMapper.updateQuitMember", user_id);
				
		if(cnt==1) {ss.commit();}
				
		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if
		
		return cnt;
	}//updateQuitMember

}//class
