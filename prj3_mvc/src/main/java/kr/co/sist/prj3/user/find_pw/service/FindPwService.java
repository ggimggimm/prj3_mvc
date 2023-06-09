package kr.co.sist.prj3.user.find_pw.service;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.find_pw.dao.FindPwDAO;
import kr.co.sist.prj3.user.find_pw.domain.ResultPwDomain;
import kr.co.sist.prj3.user.find_pw.vo.FindPwVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Component
public class FindPwService {

	@Autowired(required = false)
	private FindPwDAO fpDAO;

	
	//비번 재설정
	public int updateService(FindPwVO fpVO) throws NoSuchAlgorithmException {
	int cnt=0;
	
	fpVO.setPass(DataEncrypt.messageDigest("MD5", fpVO.getPass()));
	
	cnt = fpDAO.updateFindPw(fpVO);
	
	return cnt;
	
	
	}//updateService
	
	
	
	public String findService(FindPwVO fpVO) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException {
		
		boolean available = false;
		
		JSONObject jsonObj= new JSONObject();
		
		//입력값 암호화
		DataEncrypt de=new DataEncrypt("FsRt4SfY4US0IWtK4JPJsw==");
		
		fpVO.setName(de.encryption(fpVO.getName()));
		fpVO.setEmail(de.encryption(fpVO.getEmail()));
		
		System.out.println(fpVO.getName()+"[]"+fpVO.getEmail());
		
		jsonObj.put("available", available);
		jsonObj.put("msg", "정보가 일치하지 않습니다.");
		
		String selectedPass = fpDAO.selectFindPw(fpVO);
		System.out.println(selectedPass+"=-----뭐니?");
		
		
		 if( selectedPass!= null || selectedPass!="") { 
			 
			 jsonObj.put("available", true);
		 
		  }//end if
		 	
		
		
		
		return jsonObj.toJSONString();
		
	}// findService

	
	
	
	
	
}// class
