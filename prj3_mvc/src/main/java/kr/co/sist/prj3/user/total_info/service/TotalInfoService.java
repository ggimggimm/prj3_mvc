package kr.co.sist.prj3.user.total_info.service;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.prj3.user.total_info.dao.TotalInfoDAO;
import kr.co.sist.prj3.user.total_info.domain.ActorDomain;
import kr.co.sist.prj3.user.total_info.domain.CommInfoDomain;
import kr.co.sist.prj3.user.total_info.domain.DirectorDomain;
import kr.co.sist.prj3.user.total_info.domain.GradeDomain;
import kr.co.sist.prj3.user.total_info.domain.MovieImgDomain;
import kr.co.sist.prj3.user.total_info.domain.ProduceDomain;
import kr.co.sist.prj3.user.total_info.vo.GradeVO;
import kr.co.sist.prj3.user.total_info.vo.LikeGradeVO;
import kr.co.sist.prj3.user.total_info.vo.LikeMovieVO;

@Component
public class TotalInfoService {

	@Autowired(required = false)
	private TotalInfoDAO tiDAO;

	// 공통 정보
	public CommInfoDomain searchCommInfo(LikeMovieVO lmVO) {
		CommInfoDomain cid = tiDAO.selectcommInfo(lmVO);

		return cid;
	}// searchCommInfo

	// 좋아요 상태
	public boolean movieLikeStatus(LikeMovieVO lmVO) {
		
		String result="";
		boolean likeStatus = false;
		
	    result = tiDAO.selectLikeMovie(lmVO);

	    if(result != null && !result.isEmpty()) { //좋아요 레코드가 조회된다면
			likeStatus = true;
		}//end if
	    
	    return likeStatus;
	}// movieLikeStatus
			
	// 좋아요 추가
	public String addLikeMovie(LikeMovieVO lmVO) {
		boolean resultFlag=false;
		JSONObject jsonObj = new JSONObject();
		
	    int cnt = tiDAO.insertLikeMovie(lmVO);
	    
	    if(cnt==1) {
			jsonObj.put("resultFlag", resultFlag);
		}//end if
		
		return jsonObj.toJSONString();
	}
			
	// 좋아요 삭제
	public String removeLikeMovie(LikeMovieVO lmVO) {
		boolean resultFlag=false;
		JSONObject jsonObj = new JSONObject();
		
		int cnt = tiDAO.deleteLikeMovie(lmVO);
		
		if(cnt==1) {
			jsonObj.put("resultFlag", resultFlag);
		}//end if
		
		return jsonObj.toJSONString();
	}// removeLikeMove

	// 줄거리
	public String summaryInfo(int m_num) {
		String summary = "";
		try {
			summary = tiDAO.selectSummary(m_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return summary;
	}// summaryInfo

	// 감독 (주요정보, 출연/제작)
	public List<DirectorDomain> directorInfo(int m_num) {

		List<DirectorDomain> list = tiDAO.selectDirector(m_num);

		return list;
	}// directorInfo

	// 배우 (주요정보, 출연/제작)
	public List<ActorDomain> actorInfo(int m_num) {
		List<ActorDomain> list = tiDAO.selectActor(m_num);

		return list;
	}// actorInfo
	
	// 영화 사진 
	public List<MovieImgDomain> movieImg(int m_num) {
		List<MovieImgDomain> list = tiDAO.selectMovieImg(m_num);
		return list;
	}// movieImg
	
	// 제작사
	public ProduceDomain searchProduce(int m_num) {
		ProduceDomain pd = tiDAO.selectProduce(m_num);
		
		return pd;
	}// searchProduce

	///////////////////////////////////// 평점 ///////////////
	//평균 평점
	public int searchAvgGrade(int m_num) {
		int avgGrade=0;
		avgGrade = tiDAO.selectAvgGrade(m_num);
		
		return avgGrade;
	}// avgGradeUser
	
	//평가 수
	public int cntGrade(int m_num) {
		int cntGrade=0;
		cntGrade = tiDAO.selectCntGrade(m_num);
		
		return cntGrade;
	}// avgGradeUser
	
	
	// 평점
	public List<GradeDomain> searchGrade(int m_num) {
		List<GradeDomain> list = new ArrayList<GradeDomain>();

		list = tiDAO.selectGrade(m_num);
		
		return list;
	}// searchGrade

	// 평점
	public List<GradeDomain> searchGradeOld(int m_num) {
		List<GradeDomain> list = new ArrayList<GradeDomain>();
		
		list = tiDAO.selectGradeOld(m_num);
		
		return list;
	}// searchGradeOld

	// 별점, 한줄평 등록
		public boolean addGrade(GradeVO gVO) {
			
			boolean success=false;
			
			success = tiDAO.insertGrade(gVO)==1;
			
			return success;
		}// addGrade

	public boolean removeGrade(GradeVO gVO) {
		int cnt = tiDAO.deleteGrade(gVO);
		
		return cnt == 1;
	}// removeGrade


	public void addLikeGrade(LikeGradeVO lgVO) {

	}// addLikeGrade

	public int removeLikeGrade(LikeGradeVO lgVO) {
		return 0;
	}// removeLikeGrade

}// class
