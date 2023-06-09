package kr.co.sist.prj3.user.mypage.controller;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.prj3.user.login.domain.LoginResultDomain;
import kr.co.sist.prj3.user.mypage.service.UserService;
import kr.co.sist.prj3.user.mypage.vo.ModifyInfoVO;

@Controller
@SessionAttributes("lrDomain")
public class UserController {
	
	@Autowired(required=false)
	private UserService us;
	
	@GetMapping("/check_pass.do")
	public String checkPassFrm() {
		
		return "mypage/checkPass";//비밀번호확인.jsp
	}//checkPassFrm
	
	@PostMapping("/modifyInfo.do")
	public String checkPassFrmProcess(String pass,Model model) throws GeneralSecurityException, UnsupportedEncodingException {
		
		LoginResultDomain lrDomain=(LoginResultDomain)model.getAttribute("lrDomain");
		String user_id=lrDomain.getUser_id();
		
		//회원정보수정 페이지 들어갈때 비밀번호 확인
		boolean isPasswordCorrect = us.checkPassService(user_id,pass);
		
		
		//회원정보수정 페이지 값 select해서 보여주기
		model.addAttribute("selectInfo",us.showMyInfo(user_id));
		
		//비밀번호 확인 process
		if (isPasswordCorrect) {
		    // 비밀번호가 맞는 경우, 다음 페이지로 이동
		    return "mypage/modifyInfo";
		} else {
		    // 비밀번호가 틀린 경우, 에러 메시지 표시 등 필요한 처리 수행
			model.addAttribute("errorMessage", "비밀번호가 틀렸습니다. 비밀번호 확인 후 재입력 바랍니다.");
		
			return "mypage/checkPass";
		}//end else
		 
	}//checkPassFrmProcess
	
	
	@PostMapping("/main.do")
	public String modifyInfoProcess(ModifyInfoVO miVO,Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException {
		
		
		model.addAttribute("modifyInfo",us.modifyInfo(miVO));
		
		
		return "main/main_frm";//메인페이지로 이동
	}//modifyInfoProcess
	
	
	
	@PostMapping("/quitMember.do")
	public String quitMember(String user_id) {
		
		us.quitMember(user_id);
		
		return "main/main_frm";
	}//quitMember
	
	
	

}//class
