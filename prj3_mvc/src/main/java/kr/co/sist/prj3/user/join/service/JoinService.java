package kr.co.sist.prj3.user.join.service;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.join.dao.JoinDAO;
import kr.co.sist.prj3.user.join.vo.UserVO;
import kr.co.sist.util.cipher.DataEncrypt;


@Component
public class JoinService {

	
	@Autowired
	private JoinDAO jDAO;
	
	
	//회원 가입
	public boolean joinService ( UserVO uVO ) throws UnsupportedEncodingException, GeneralSecurityException {
		int cnt=0;

		// 비밀번호 SHA형식의 단방향 암호화 수행
		uVO.setPass(DataEncrypt.messageDigest("MD5", uVO.getPass())); // set을 했으니 get으로 일반 비번을 받고 일방향 암호화를 한 후 다시 set한다.
		
		
		//그외의 정보 복호화 가능한 양방향 암호화 수행
		DataEncrypt de=new DataEncrypt("FsRt4SfY4US0IWtK4JPJsw==");//내가 사용한 키 나중에 보내줌. 
		uVO.setName(de.encryption(uVO.getName()));
		uVO.setEmail(de.encryption(uVO.getEmail()));
		uVO.setTel(de.encryption(uVO.getTel()));
		uVO.setAddr(de.encryption(uVO.getAddr())); 

		
		cnt = jDAO.insertUser(uVO);
		return cnt==1;
	}//joinService

	
	
	//id 중복확인 
	public String idDupService( String user_id ) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		boolean available = false;
		JSONObject jsonObj = new JSONObject();
		
		//일단 false
		jsonObj.put("available", available);
		
		
		available = jDAO.selectDupId(user_id)==null;
		
		
		if(available) {
			jsonObj.put("available", available);
		}//end if
		
		return jsonObj.toJSONString();
	
	}//idDupService

	
	
	
	
	//닉네임 중복확인
	public String nickDupService( String nick_name ) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		boolean available = false;
		JSONObject jsonObj = new JSONObject();
		
		//일단 false
		jsonObj.put("available", available);
		
		
		available = jDAO.selectDupNick(nick_name)==null;
		
		
		if(available) {
			jsonObj.put("available", available);
		}//end if
		
		return jsonObj.toJSONString();
		
	}//nickDupService
	
	
		//이메일 중복확인
		public String emailDupService( String email ) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
			boolean available = false;
			JSONObject jsonObj = new JSONObject();
			
			//일단 false
			jsonObj.put("available", available);
			
			
			DataEncrypt de=new DataEncrypt("FsRt4SfY4US0IWtK4JPJsw==");//내가 사용한 키 나중에 보내줌. 
			//암호화해서 셀렉하기
			available = jDAO.selectDupEmail(de.encryption(email))==null;
			
			if(available) {
				jsonObj.put("available", available);
			}//end if
			
			return jsonObj.toJSONString();
			
		}//nickDupService


	
	
}//class
