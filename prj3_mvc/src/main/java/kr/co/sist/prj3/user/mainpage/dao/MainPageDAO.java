package kr.co.sist.prj3.user.mainpage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.mainpage.domain.MainInfoDomain;
import kr.co.sist.prj3.user.mainpage.domain.SearchMovieDomain;

@Component
public class MainPageDAO {
	
	public MainInfoDomain selectBestMovie() {
		MainInfoDomain mif=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		mif=ss.selectOne("center");
		
		if(ss != null) {ss.close();}//end if
		return mif;
		
	}//selectBestMovie
	
	public List<SearchMovieDomain> selectAllMovie() {
		List<SearchMovieDomain> list=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list=ss.selectList("movieList");
		
		if(ss != null) {ss.close();}
		
		return list;
	}//selectAllMovie
	
	public List<SearchMovieDomain> selectAllNone() {
		List<SearchMovieDomain> list=null;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list=ss.selectList("noneList");
		
		if(ss != null) {ss.close();}
		
		return list;
	}//selectAllNone
	
	public List<SearchMovieDomain> selectSearchMovie(String title) {
		List<SearchMovieDomain> list=null;
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list=ss.selectList("searchMovie",title);
		
		if(ss != null) {ss.close();}
		
		return list;
	}//selectSearchMovie
	


}//class
