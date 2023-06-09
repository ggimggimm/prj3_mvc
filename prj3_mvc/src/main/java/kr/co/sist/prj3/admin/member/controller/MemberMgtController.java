package kr.co.sist.prj3.admin.member.controller;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.prj3.admin.member.domain.MemberBrdDomain;
import kr.co.sist.prj3.admin.member.domain.MemberInfoDomain;
import kr.co.sist.prj3.admin.member.service.MemberMgtService;

/**
 * 회원 현황 게시판/검색
 * @author user
 *
 */
@Controller
public class MemberMgtController {

	@Autowired
	private MemberMgtService mmService;
	
	
	@RequestMapping(value="/member_board.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String memberSearchProcess(@RequestParam(value = "name", required=false, defaultValue="") String name, Model model) throws UnsupportedEncodingException, GeneralSecurityException {
		
		List<MemberBrdDomain> list=null;
		
		list = mmService.memberSearchService(name);
		
		model.addAttribute("memList", list);
		
		return "/member/member_board";
	}//memberSearchProcess
	
	
	

	/**
	 * 회원 상세 정보 열람
	 * @param userId
	 * @param model
	 * @return
	 * @throws GeneralSecurityException 
	 * @throws NoSuchAlgorithmException 
	 * @throws UnsupportedEncodingException 
	 */
	@GetMapping("/member_info.do")
	public String memberInfoProcess(String user_id, Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException {
		
		MemberInfoDomain mid=null;
		
		mid = mmService.memberInfoService(user_id);
		
		
		model.addAttribute("mem", mid);
		
		return "/member/member_info";
	}//memberInfoProcess

	
	
	
	
	/**
	 * 회원 삭제 (update)
	 * @param model
	 * @return
	 */
	@ResponseBody
	@GetMapping("/member_delete.do")
	public String memberRemoveProcess(String user_id) {
		
		//user_id로 update 서비스
		String jsonObj = mmService.memberRemoveService(user_id);
		
		return jsonObj;
		
		
	}//memberRemoveProcess
	
	

	
	
}//class
