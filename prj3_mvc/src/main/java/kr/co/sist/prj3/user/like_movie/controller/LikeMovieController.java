package kr.co.sist.prj3.user.like_movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.prj3.user.like_movie.service.LikeMovieService;
import kr.co.sist.prj3.user.like_movie.vo.SelectTypeVO;
import kr.co.sist.prj3.user.login.domain.LoginResultDomain;

@Controller
public class LikeMovieController {

	@Autowired(required=false)
	private LikeMovieService lms;
	
	@GetMapping("/mypage_movie.do")
	public String myPageFrm() {
		return "/like_movie/mypage";
	}// myPageFrm
	
	@GetMapping("/like_movie.do")
	public String myMovieFrm(SelectTypeVO stVO, Model model, @SessionAttribute(value="lrDomain", required = false) LoginResultDomain lrDomain) {
		
		model.getAttribute("lrDomain");
		
		
		if(lrDomain != null) {
			stVO.setUser_id(lrDomain.getUser_id());
		}//end if
		
		
		// 좋아요 한 영화
		model.addAttribute("like", lms.searchMyMovie(stVO));
		
		// 영화 건수 select
		model.addAttribute("cntMovie", lms.searchCntMyMovie(stVO));
		
		
		return "/like_movie/like_movie";
	}// myMovieFrm
	
	@GetMapping("/like_movie2.do")
	public String myMovieFrm2(SelectTypeVO stVO, @SessionAttribute(value="lrDomain", required = false) LoginResultDomain lrDomain) {
		
		stVO.setUser_id(lrDomain.getUser_id());
		
		lms.removeMyMovie(stVO);
		
		return "redirect:/like_movie.do";
	}//myMovieFrm2
	
	
	@GetMapping("/mygrade.do")
	public String myGradeFrm(Model model, @SessionAttribute(value="lrDomain", required = false) LoginResultDomain lrDomain) {
	    
	    String user_id = lrDomain.getUser_id();
	    
	    System.out.println(user_id);
	    
	    model.addAttribute("lrDomain", lrDomain);
	    model.addAttribute("grade", lms.searchMyGrade(user_id));
	
	 	model.addAttribute("cntGrade", lms.searchCntMyGrade(user_id));
	    
	    return "/like_movie/mygrade";
	}
	
}
