package kr.co.sist.prj3.user.mainpage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.mainpage.dao.MainPageDAO;
import kr.co.sist.prj3.user.mainpage.domain.MainInfoDomain;
import kr.co.sist.prj3.user.mainpage.domain.SearchMovieDomain;

@Component
public class MainPageService {
	
	@Autowired(required = false)
	private MainPageDAO mpDAO;
	
	public MainInfoDomain mainPageBestMovie() {
		MainInfoDomain mif=null;
		mif=mpDAO.selectBestMovie();
		return mif;
		
	}
	
	public List<SearchMovieDomain> mainPageFrmService() {
		List<SearchMovieDomain> list= new ArrayList<SearchMovieDomain>();
		
		list=mpDAO.selectAllMovie();
		
		return list;
	}//mainPageFrmService
	
	public List<SearchMovieDomain> mainPageNone() {
		List<SearchMovieDomain> list= new ArrayList<SearchMovieDomain>();
		
		list=mpDAO.selectAllNone();
		
		return list;
	}//mainPageNone
	
	public List<SearchMovieDomain> searchMovieService(String title) {
		List<SearchMovieDomain> list= new ArrayList<SearchMovieDomain>();
		
		list=mpDAO.selectSearchMovie(title);
		
		return list;
	}//SearchMovieDomain
	

}//class
