package kr.co.sist.prj3.user.like_movie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.like_movie.dao.LikeMovieDAO;
import kr.co.sist.prj3.user.like_movie.domain.MyGradeDomain;
import kr.co.sist.prj3.user.like_movie.domain.MyMovieDomain;
import kr.co.sist.prj3.user.like_movie.vo.SelectTypeVO;

@Component
public class LikeMovieService {

	@Autowired(required=false)
	private LikeMovieDAO lmDAO;
	
	// 기대되는 영화
	public List<MyMovieDomain> searchMyMovie(SelectTypeVO stVO) {
		List<MyMovieDomain> list = lmDAO.selectMyMovie(stVO);
		
		return list;
	}// searchMyMovie
	
	public int searchCntMyMovie(SelectTypeVO stVO) {
		int cnt = 0;
		
		cnt = lmDAO.selectCntMovie(stVO);
		
		return cnt;
	}// searchCntMyMovie
	
	public boolean removeMyMovie(SelectTypeVO stVO) {
		int cnt = 0;
		cnt = lmDAO.deleteMyMovie(stVO);
		
		return cnt==1;
	}// removeMyMovie
	
	
	
	
	// 내가 쓴 평점
	public List<MyGradeDomain> searchMyGrade(String id) {
		List<MyGradeDomain> list = new ArrayList<MyGradeDomain>();
		
		list = lmDAO.selectMyGrade(id);
		
		return list;
	}// searchMyGrade
	
	public int searchCntMyGrade(String id) {
		int cnt = 0;
		
		cnt = lmDAO.selectCntGrade(id);
		
		return cnt;
	}// searchCntMyGrade
	
	public int removeMyGrade(String id) {
		return 0;
	}// removeMyGrade
	
}// class
