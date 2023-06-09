package kr.co.sist.prj3.user.find_id.controller;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.sist.prj3.user.find_id.service.FindIdService;
import kr.co.sist.prj3.user.find_id.vo.FindIdVO;
import kr.co.sist.util.cipher.DataDecrypt;

@Controller
public class FindIdController {

	@Autowired(required = false)
	private FindIdService fis;
	
	/**
	 * 아이디 찾기로 이동함
	 * @author KT
	 */
	@GetMapping("/find_id.do")
	public String findIdFrm() {

		return "/mypage/find_id";
	}//findIdFrm
	
	/**
	 * 아이디 찾기 프로세스 
	 * @author KT
	 */
	@PostMapping("/find_id_process")
	public String findIdProcess(FindIdVO fiVO, Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException {
		
		model.addAttribute("findId",fis.findService(fiVO));
		
		return "/mypage/complete_id";
	}//findIdProcess
	
}//class
