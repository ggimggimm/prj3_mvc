package kr.co.sist.prj3.user.find_pw.controller;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.prj3.user.find_pw.service.FindPwService;
import kr.co.sist.prj3.user.find_pw.vo.FindPwVO;
import kr.co.sist.prj3.user.login.domain.LoginResultDomain;

@SessionAttributes("user_id")
@Controller
public class FindPwController {
	
	@Autowired(required = false)
	private FindPwService fps;
	
	//비밃번호 찾기 페이지로 이동
	@GetMapping("/find_pw.do")
	public String findPwFrm() {
		
		return "/mypage/find_pw";
	}//findPwFrm
	
	//입력 값 확인 후 비밀번호 변경 페이지로 이동
	@PostMapping("/find_pw_process.do")
	@ResponseBody
	public String findPwProcess(FindPwVO fpVO,Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException{
		String jsonObj="";
		System.out.println("----------------------------------------");
		jsonObj=fps.findService(fpVO);
		System.out.println("=================================="+jsonObj);
		
		model.addAttribute("user_id", fpVO.getUser_id());
		
		return jsonObj;
	}//findPwProcess
	
	
	@GetMapping("/update_pw_frm.do")
	public String updatePwFrm() {
		
		return "mypage/complete_pw";
		
		
	}//updatePwFrm
	
	//비밀번호 변경
	@PostMapping("/update_pw_process.do")
	public String updatePwProcess(FindPwVO fpVO,Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException{
		
		fpVO.setUser_id((String)model.getAttribute("user_id"));
		fps.updateService(fpVO);
		System.out.println( fpVO.getUser_id()+"[]"+fpVO.getPass() );
		
		return "redirect:/mainPage.do";
	}//findPwProcess

}//class
