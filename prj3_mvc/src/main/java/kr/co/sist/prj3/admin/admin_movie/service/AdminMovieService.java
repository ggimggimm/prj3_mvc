 package kr.co.sist.prj3.admin.admin_movie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.admin.admin_movie.dao.AdminMovieDAO;
import kr.co.sist.prj3.admin.admin_movie.domain.ActorDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.DirectorDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.EditMovieDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.MovieGradeDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.MovieListDomain;
import kr.co.sist.prj3.admin.admin_movie.vo.ActorVO;
import kr.co.sist.prj3.admin.admin_movie.vo.DirectorVO;
import kr.co.sist.prj3.admin.admin_movie.vo.EditMovieVO;

@Component
public class AdminMovieService {

	@Autowired(required=false) 
	private AdminMovieDAO amDAO;
	
	// 영화 관리
	public List<MovieListDomain> searchMovieList(String mTitle) {
		List<MovieListDomain> list = amDAO.selectMovieList(mTitle);
		
		return list;
	}
	
	// 상영중, 미상영
	public List<MovieListDomain> searchMovieState(String selectType) {
	    List<MovieListDomain> list = amDAO.selectMovieState(selectType);
	    
	    return list;
	}
	
	// 한줄평 관리
	public List<MovieGradeDomain> searchGradeList() {
		List<MovieGradeDomain> list = amDAO.selectMovieGrade();
		return list;
	}//searchGradeList
	
	// 한줄평 삭제
	public boolean deleteGrade(int g_num) {
		
		boolean success = false;
		
		if(amDAO.deleteMovieGrade(g_num)==1) {
			success = true;
		}//end if
		
		return success;
	}//deleteGrade
	
	// 영화 수정전 select
	public EditMovieDomain searchMovie(int mNum) {
		EditMovieDomain emd = amDAO.selectMovie(mNum);
		
		return emd;
	}
	
	public int sequenceNum() {
		int m_num=0;
		
		m_num=amDAO.sequenceMnum();
		
		return m_num;
	}
	
	// 영화 수정
	public boolean modifyMovie(EditMovieVO emVO) {
		int cnt = amDAO.updateMovie(emVO);
		
		return cnt == 1;
	}// modifyMovie
	
	
	// 감독
	public List<DirectorDomain> searchDirector(int mNum) {
		List<DirectorDomain> list = amDAO.selectDirector(mNum);
		
		return list;
	}// searchDirector
	
	public void addDirector(DirectorVO[] dVO) {
		amDAO.insertDirector(dVO);
	}
	
	public boolean removeDirector(int d_num) {
		int cnt = 0;
		cnt = amDAO.deleteDirector(d_num);
		
		return cnt==1;
	}
	
	// 배우
	public List<ActorDomain> searchActor(int mNum) {
		List<ActorDomain> list = amDAO.selectActor(mNum);
		
		return list;
	}
	
	public void addActor(ActorVO[] aVO) {
		amDAO.insertActor(aVO);
	}
	
	public boolean removeActor(int a_num) {
		int cnt = 0;
		cnt = amDAO.deleteActor(a_num);
		
		return cnt==1;
	}
}
