package kr.co.sist.prj3.user.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.mypage.domain.CanDetailDomain;
import kr.co.sist.prj3.user.mypage.domain.ResDetailDomain;
import kr.co.sist.prj3.user.mypage.vo.ModifyPassVO;

@Component
public class MyPageDAO {
	
	public List<ResDetailDomain> selectRes(String id) {
		List<ResDetailDomain> list=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list=ss.selectList("selectRes",id);
		
		if(ss != null) {ss.close();}//end if
		
		return list;
	}//selectRes
	
	public List<CanDetailDomain> selectCan(String id) {
		List<CanDetailDomain> list=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list=ss.selectList("selectCan",id); 
		
		if(ss != null) {ss.close();}//end if
		
		return list;
	}//selectRes
	
	public int updateRes(int r_num) {
		int result=0;
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		result=ss.update("updateRes",r_num); //r_num 넣기
		if(result == 1) {ss.commit();}//end if
		
		if(ss != null) {ss.close();}//end if
		
		return result;
	}//updateRes
	
	public int updateSeats(int r_num) {
		int result=0;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		System.out.println(r_num);
		result=ss.update("deleteSeats",r_num);//r_num 넣기
		if(result > 0) {ss.commit();}//end if
		
		if(ss != null) {ss.close();}//end if
		
		return result;
	}//updateSeats
	
	public String selectPass(ModifyPassVO mpVO) {
		String result=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		result=ss.selectOne("checkPass", mpVO);
		
		if(ss != null) {ss.close();}//end if
		
		return result;
	}//selectPass
	
	public int updatePass(ModifyPassVO mpVO) {
		int result=0;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		result = ss.update("updatePass",mpVO);
		
		if(result == 1) {ss.commit();}//end if
		
		if(ss != null) {ss.close();}//end if
		
		return result;
	}//updatePass
	

}//class
