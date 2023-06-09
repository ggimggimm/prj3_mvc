package kr.co.sist.prj3.user.review.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.prj3.user.comment.service.CommentService;
import kr.co.sist.prj3.user.login.domain.LoginResultDomain;
import kr.co.sist.prj3.user.review.domain.MyReviewDomain;
import kr.co.sist.prj3.user.review.domain.ReviewBoardDomain;
import kr.co.sist.prj3.user.review.service.UserReviewService;
import kr.co.sist.prj3.user.review.vo.LikeVO;
import kr.co.sist.prj3.user.review.vo.MyReviewSearchVO;
import kr.co.sist.prj3.user.review.vo.ReviewModifyVO;
import kr.co.sist.prj3.user.review.vo.ReviewSearchVO;
import kr.co.sist.prj3.user.review.vo.WriteReviewVO;

@Controller
@SessionAttributes("lrDomain")
public class UserReviewController {
	
	@Autowired(required = false)
	private UserReviewService urService ;
	
	@Autowired(required = false)
	private CommentService commService ;
	
	/**
	 * 유저   됐냐
	 * 해당 영화에 대한 리뷰 리스트 보여주기 + 검색기능
	 * 2023.05.20
	 * @author KT
	 */
	@RequestMapping(value = "/review_list.do", method = {RequestMethod.GET,RequestMethod.POST} )
	public String showSearchReviewList(ReviewSearchVO rsVO, Model model) {
		
		String url = "";
		
		model.addAttribute("reviewList", urService.showSearchReviewList(rsVO));
		url = "/review/review_list";
		
		return url;
	}//showMovieInfo
	
	/**
	 * 유저
	 * 내가 작성한 리뷰 !삭제!
	 * 2023.05.22
	 * @author KT
	 */
	@GetMapping("/review_write_delete.do")
	public String reviewDelete(int rv_num, int m_num, Model model) {
		
		urService.reviewDelete(rv_num);
		
		return "redirect:/main_info.do?m_num="+m_num;
	}//reviewFrm
	
	/**
	 * 유저
	 * 리뷰 작성 페이지로 !이동! + !조회!
	 * 2023.05.20
	 * @author KT
	 */
	@GetMapping("/review_write.do")
	public String reviewFrm(int m_num) {
		
		
		return "/review/review_write";
	}//reviewFrm 
	
	/**
	 * 유저
	 * 리뷰 !등록! 페이지에서 !등록! 
	 * 2023.05.20
	 * @author KT
	 */
	@PostMapping("/review_write_process.do")
	public String reviewProcess(WriteReviewVO wrVO,Model model) {
	
		urService.reviewProcess(wrVO);
		
		return "redirect:/main_info.do?m_num="+wrVO.getM_num();
	}//reviewProcessA
	
	/**
	 * 유저
	 * 리뷰 수정 페이지로 !이동! + !조회!
	 * 2023.05.20
	 * @author KT
	 */
	@PostMapping("/review_write_modify.do")
	public String reviewModFrm(int rv_num, Model model) {
		
		model.addAttribute("review", urService.reviewWriteShow(rv_num));
		
		return "/review/review_write_modify";
	}//reviewFrm
	
	/**
	 * 유저
	 * 리뷰 !수정! 페이지에서 !수정!
	 * 2023.05.20
	 * @author KT
	 * @throws UnsupportedEncodingException 
	 */
	@PostMapping("/review_write_modify_process.do")
	public String reviewModProcess(ReviewModifyVO rmVO, Model model, String m_title, int rv_num, int m_num) throws UnsupportedEncodingException {
		
		System.out.println(rmVO.getM_num());
		System.out.println(m_title);
		System.out.println(rv_num);
		String encodedMTitle = URLEncoder.encode(m_title, "UTF-8");
		model.addAttribute("review", urService.reviewModify(rmVO));
		
		return "redirect:/review_post.do?m_num="+rmVO.getM_num()+"&m_title="+encodedMTitle+"&rv_num="+rv_num;
	}//reviewFrm
	
	/**
	 * 유저
	 * 제목 클릭한 리뷰정보,리뷰,댓글,좋아요(+카운트) 보여주기
	 * 2023.05.21
	 * @author KT,KM
	 */
	@GetMapping("/review_post.do")
	public String showReview(LikeVO lVO, Model model, @SessionAttribute(value="lrDomain", required = false) LoginResultDomain lrDomain) {
		String user_id = "";
		
		
		model.getAttribute("lrDomain");
		
		
		try {
			user_id = lrDomain.getUser_id();
		} catch (NullPointerException e) {
			// lrDomain이 null인 경우 예외 처리
			user_id = " ";
		}
		
		urService.hitsUp(lVO.getRv_num());
		
		 //리뷰정보
		 model.addAttribute("reviewInfo",urService.showReview(lVO));
		 
		 //좋아요 누른 사람
		 model.addAttribute("likeUser",urService.showLikeUser(lVO.getRv_num()));

		 //댓글, 대댓글 보여주기
		 model.addAttribute("commList",commService.getCommList(lVO.getRv_num()));
		 model.addAttribute("commSize",commService.getCommList(lVO.getRv_num()).size());
		 model.addAttribute("replyList",commService.getReplyList(lVO.getRv_num()));
		 
		 lVO.setUser_id(user_id);
		
		//////////////// 규미 ////////////////
		boolean likeStatus=false;
		int likeCnt=0;
		
		//댓글내용 도메인
		
		
		//좋아요 상태와 수
		likeStatus = urService.likeStatusService(lVO);
		likeCnt = urService.likeCount(lVO.getRv_num());
		
		//모델에 담기
		model.addAttribute("likeStatus", likeStatus);
		model.addAttribute("likeCnt", likeCnt);

		model.addAttribute("id", lVO.getUser_id());
		return "/review/review_post";
	}//end showReview

	
	
	
	
	/**
	 * 유저
	 * 해당 리뷰 창에서 좋아요 누르면 +1, 해제하면 -1
	 * 2023.05.22
	 * @author KM
	 */
	@ResponseBody
	@GetMapping("/likeClicked.do")
	public String likeUpDown( LikeVO lVO, boolean liked) {
		
		String jsonObj="";
		
		if (liked) { //좋아요(눌린) 상태였다면
			//딜리트
			jsonObj = urService.likeOffService(lVO);

		} else {
			//인서트
			jsonObj =urService.likeOnService(lVO);
			
		} // end else
		
		
		return jsonObj;
		
	}//likeUpDown

	
	
	
	/**
    * 내가 쓴 리뷰 검색(마이페이지)
    * 2023.05.22
    * @author KM
    */
   @RequestMapping(value="/my_review.do",method= {RequestMethod.POST, RequestMethod.GET})
   public String reviewSearchProcess( MyReviewSearchVO mrsVO, Model model){
      
      if(mrsVO.getSearch()==null && mrsVO.getSearch_type()==0) { //검색어와 옵션이 null일때
         mrsVO.setSearch("");
      }//end if
       
      
      //VO에 아이디 세팅해야함
      LoginResultDomain lrDomain = (LoginResultDomain)model.getAttribute("lrDomain");
      mrsVO.setUser_id(lrDomain.getUser_id());
      
      List<MyReviewDomain> list = urService.myReviewService(mrsVO);
      
      
      model.addAttribute("myReviews", list) ;
      model.addAttribute("myReviewCnt", list.size()) ;
      
      
      // 유저에 대한 정보도 넘겨줘야함 - LoginResultDomain이 세션에 저장될 것
      
      return "/review/my_review";
	   }// my_review_borad.jsp
	
	
		//////////////////////////////////////주요정보(화면전환)//////////////////////////
		@ResponseBody
		@GetMapping("/review_info.do")
		public String reviewInfo(ReviewSearchVO rsVO, LikeVO lvo, Model model) throws PersistenceException, SQLException {
			
		JSONObject jsonObj = new JSONObject();

		// 리뷰 리스트
		List<ReviewBoardDomain> reviewList = urService.showSearchReviewList(rsVO); 
		JSONArray reviewArray = new JSONArray();
		
		jsonObj.put("reviewSize", reviewList.size());
		
		for (ReviewBoardDomain review : reviewList) {
		JSONObject reviewObj = new JSONObject(); 
		reviewObj.put("title", review.getTitle());
		reviewObj.put("nick_name", review.getNick_name());
		reviewObj.put("input_date", review.getInput_date());
		reviewObj.put("user_id", review.getUser_id());
		reviewObj.put("hits", review.getHits());
		reviewObj.put("like_total", review.getLike_total());
		reviewObj.put("rv_num", review.getRv_num());
		reviewObj.put("commSize", commService.getCommList(review.getRv_num()).size());
		reviewObj.put("replySize", commService.getReplyList(review.getRv_num()).size());
		reviewArray.add(reviewObj);
		}//end for
		
		jsonObj.put("review", reviewArray);
		
		return jsonObj.toJSONString(); 

		}//review_info	
		
		
}//class
