package kr.co.sist.prj3.user.find_pw.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.find_pw.domain.ResultPwDomain;
import kr.co.sist.prj3.user.find_pw.vo.FindPwVO;

@Component
public class FindPwDAO {
	
	public String selectFindPw(FindPwVO fpVO) {
		String pass="";
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		pass = ss.selectOne("findPw", fpVO);
		System.out.println(pass);
		
		
		if(ss != null) {ss.close();}//end if
		
		return pass;
		
	}//selectFindPw
	
	
	public int updateFindPw(FindPwVO fpVO) {
		int cnt=0;
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		cnt = ss.update("updatePw", fpVO);
		
		if (cnt==1) {
			ss.commit();
		} // end if
		
		if(ss != null) { ss.close(); }//end if 
		
		return cnt;
		
	}//selectFindPw

}//class
