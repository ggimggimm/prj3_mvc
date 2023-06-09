package kr.co.sist.prj3.user.login.service;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.login.dao.LoginDAO;
import kr.co.sist.prj3.user.login.domain.LoginResultDomain;
import kr.co.sist.prj3.user.login.vo.AdminLoginVO;
import kr.co.sist.prj3.user.login.vo.LoginVO;
import kr.co.sist.util.cipher.DataDecrypt;
import kr.co.sist.util.cipher.DataEncrypt;


@Component
public class LoginService {

	@Autowired(required = false)
	private LoginDAO lDAO;
	
	
	// 로그인
		public LoginResultDomain loginService(LoginVO lVO) throws UnsupportedEncodingException, GeneralSecurityException {
			
			LoginResultDomain lrDomain = null;
			
			
			lVO.setPass(DataEncrypt.messageDigest("MD5", lVO.getPass()));
			lrDomain = lDAO.selectUser(lVO);

			if(lrDomain!=null) {
			
			DataDecrypt dd=new DataDecrypt("FsRt4SfY4US0IWtK4JPJsw==");
			lrDomain.setName(dd.decryption(lrDomain.getName()));
			
			}
			
			return lrDomain;
			
		}//LoginResultDomain
	
		
		
		
		//어드민 로그인
				public String adminLoginService(AdminLoginVO alVO) {
					
					String admin_id ="";
					
					admin_id = lDAO.selectAdmin(alVO);
					
					return admin_id;
					
					
				}//adminLoginService
		
		
		
		
	
}//class
