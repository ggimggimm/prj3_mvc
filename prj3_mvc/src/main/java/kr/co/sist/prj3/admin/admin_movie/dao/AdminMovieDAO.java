package kr.co.sist.prj3.admin.admin_movie.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.admin.admin_movie.domain.ActorDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.DirectorDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.EditMovieDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.MovieGradeDomain;
import kr.co.sist.prj3.admin.admin_movie.domain.MovieListDomain;
import kr.co.sist.prj3.admin.admin_movie.vo.ActorVO;
import kr.co.sist.prj3.admin.admin_movie.vo.DirectorVO;
import kr.co.sist.prj3.admin.admin_movie.vo.EditMovieVO;

@Component
public class AdminMovieDAO {

	// 영화 관리
	public List<MovieListDomain> selectMovieList(String mTitle) {
		List<MovieListDomain> list = new ArrayList<MovieListDomain>();
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list = ss.selectList("selectMovieList", mTitle);
		
		if(ss != null ) { ss.close(); }// end if
		
		return list;
	}
	
	// 상영중, 미상영
	public List<MovieListDomain> selectMovieState(String select_type) {
		List<MovieListDomain> list = new ArrayList<MovieListDomain>();
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list = ss.selectList("movieState", select_type);
		
		if(ss != null ) { ss.close(); }// end if
		
		return list;
	}
	
	// 한줄평 관리
	public List<MovieGradeDomain> selectMovieGrade() {
		List<MovieGradeDomain> list = new ArrayList<MovieGradeDomain>();
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		list = ss.selectList("selectGradeList");
		if(ss != null ) { ss.close(); }// end if
		
		return list;
	}//selectMovieGrade
	
	//한줄평 삭제
	public int deleteMovieGrade(int g_num)throws PersistenceException{
		int cnt=0;
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		cnt = ss.delete("deleteGradeList", g_num);
		
		if(cnt==1) {
			ss.commit();
		}//end if
		
		if(ss != null ) { ss.close(); }// end if
		
		return cnt;
		
	}//deleteMovieGrade
	
	public int sequenceMnum() {
		int m_num=0;
		
		SqlSession ss=MyBatisHandler.getInstance().getMyBatisHandler(false);
				
		m_num = ss.selectOne("kr.co.sist.prj3.admin.admin_movie.dao.movieMapper.selectMovieKey");
		
		if(ss!=null) {ss.close();}//end if
		
		return m_num;
	}//sequenceMnum
	
	// 영화 수정
	public EditMovieDomain selectMovie(int mNum) throws PersistenceException {
		EditMovieDomain emd = null;
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		emd = ss.selectOne("suMovie", mNum);
		
		if(ss != null) { ss.close(); }// end if
		
		return emd;
	}// selectMovie
	
	public int updateMovie(EditMovieVO emVO) {
		int cnt = 0;
		
		// 1. MyBatis Handler 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		// 2. 조작 method 호출
		cnt = ss.update("updateMovie", emVO);
		// 3. transaction 처리
		if(cnt == 1) { ss.commit(); }// end if
		// 4. MyBatis Handler 닫기
		if(ss != null) { ss.close(); }// end if
				
		return cnt;
	}// updateMovie
	
	
	// 감독
	public List<DirectorDomain> selectDirector(int mNum) {
		List<DirectorDomain> list = null;
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		list = ss.selectList("selectDirector", mNum);
		
		return list;
	}
	
	public void insertDirector(DirectorVO[] dVO) {
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		for(int i=0; i<dVO.length; i++) {
			int cnt = ss.insert("updateDirector", dVO[i]);
			System.out.println(dVO[i]);
			if(cnt == 1) {
				ss.commit();
			}// end if
		}// end for
		
		if(ss!=null) { ss.close(); }
	}// insertDirector
	
	public int deleteDirector(int d_num) {
		int cnt = 0;
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		cnt = ss.delete("deleteDirector", d_num);
		
		if(cnt == 1) {
			System.out.println("삭제 성공 => commit");
			ss.commit();
		}else {
			System.out.println("롤백");
			ss.rollback();
		}// end else
		
		if(ss != null) { ss.close(); }// end if
		
		return cnt;
	}
	
	// 배우
	public List<ActorDomain> selectActor(int mNum) {
		List<ActorDomain> list = null;
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		list = ss.selectList("selectActor", mNum);
		
		return list;
	}
	
	public void insertActor(ActorVO[] aVO) {
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		for(int i=0; i<aVO.length; i++) {
			int cnt = ss.insert("updateActor", aVO[i]);
			System.out.println(aVO[i]);
			
			if(cnt == 1) {
				ss.commit();
			}// end if
		}// end for
		
		if(ss!=null) { ss.close(); }
	}
	
	public int deleteActor(int a_num) {
		int cnt = 0;
		
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		cnt = ss.delete("deleteActor", a_num);
		
		if(cnt == 1) {
			System.out.println("삭제 성공 => commit");
			ss.commit();
		}else {
			System.out.println("롤백");
			ss.rollback();
		}// end else
		
		if(ss != null) { ss.close(); }// end if
		
		return cnt;
	}
}
