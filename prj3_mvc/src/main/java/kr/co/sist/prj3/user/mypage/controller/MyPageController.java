package kr.co.sist.prj3.user.mypage.controller;

import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.prj3.user.login.domain.LoginResultDomain;
import kr.co.sist.prj3.user.mypage.service.MyPageService;
import kr.co.sist.prj3.user.mypage.vo.ModifyPassVO;

@Controller
@SessionAttributes("lrDomain")
public class MyPageController {
	
	@Autowired(required = false)
	private MyPageService mps;
	
	@RequestMapping(value="/mypage.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String myPage(Model model) { // 나중에 session으로 받고 String id 지우기
		LoginResultDomain lrDomain =(LoginResultDomain)model.getAttribute("lrDomain");
		
		String id=lrDomain.getUser_id();
		model.addAttribute("resInfo", mps.showResDetail(id));
		model.addAttribute("canInfo",mps.showCanDetail(id));
		
		return "mypage/mypage";
	}//myPage
	
	@GetMapping("/cancelRes.do")
	public String canRes( int r_num, Model model) { //나중에 session으로 받고 String id 지우기
		
		
		model.addAttribute("resultFlag",mps.cancelRes(r_num));
		model.addAttribute("resultSeat",mps.cancelSeats(r_num));
		
		return "forward:mypage.do";
	}//canRes
	
	@GetMapping("/checkPass.do")//비밀번호확인페이지
	public String checkPass(Model model) {
		return "mypage/checkPass";
	}//myPage
	
	@GetMapping("/confirm_pass.do")//비밀번호변경
	public String confirm_pass(Model model) {
		
		//lrDomain=(LoginResultDomain)model.getAttribute("lVO")
		//model.addAttribute("loginResult",lrDomain);
		
		return "mypage/confirm_pass";
	}//confirm_pass
	
	@ResponseBody
	@PostMapping("/confirm_pass_process.do")
	public String confirm_pass_process(ModifyPassVO mpVO, Model model) throws NoSuchAlgorithmException {
		String jsonObj="";
		LoginResultDomain lrDomain=(LoginResultDomain)model.getAttribute("lrDomain");
		mpVO.setUser_id(lrDomain.getUser_id());
		jsonObj = mps.checkPass(mpVO);
		  
		return jsonObj;
	}//confirm_pass_process
	
	@PostMapping("/modify_pass.do")
	public String modify_pass(ModifyPassVO mpVO, Model model) throws NoSuchAlgorithmException {
		int result=0;
		String page="";
		LoginResultDomain lrDomain=(LoginResultDomain)model.getAttribute("lrDomain");
		String user_id=lrDomain.getUser_id();
		mpVO.setUser_id(user_id);
		result = mps.modifyPass(mpVO);
		if(result == 1) {
			page="mypage/mypage";
		}//end if
		
		return page;
	}//modify_pass
	 

}//class
