package kr.co.sist.prj3.user.mypage.service;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.mypage.dao.MyPageDAO;
import kr.co.sist.prj3.user.mypage.domain.CanDetailDomain;
import kr.co.sist.prj3.user.mypage.domain.ProfileDomain;
import kr.co.sist.prj3.user.mypage.domain.ResDetailDomain;
import kr.co.sist.prj3.user.mypage.vo.ModifyPassVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Component
public class MyPageService {
	
	@Autowired(required = false)
	private MyPageDAO mpd;
	
	public ProfileDomain showProfile(String id) {
		ProfileDomain pd=null;
		
		return pd;
	}//showProfile
	
	public List<ResDetailDomain> showResDetail(String id) {
		List<ResDetailDomain> list = new ArrayList<ResDetailDomain>();
		
		list=mpd.selectRes(id);
		
		return list;
	}//showResDetail
	
	public List<CanDetailDomain> showCanDetail(String id) {
		List<CanDetailDomain> list = new ArrayList<CanDetailDomain>();
		
		list=mpd.selectCan(id);
		
		return list;
	}//showResDetail
	
	public boolean cancelRes(int r_num) {
		boolean flag=false;
		
		int result=mpd.updateRes(r_num);
		
		if(result>0) {
			flag=true;
		}//end if
		
		
		return flag;
	}//cancelRes
	
	public boolean cancelSeats(int r_num) {
		boolean flag=false;
		
		int result=mpd.updateSeats(r_num);
		
		if(result>0) {
			flag=true;
		}//end if
		
		
		return flag;
	}//cancelSeats
	
	
	
	public String checkPass(ModifyPassVO mpVO) throws NoSuchAlgorithmException {
		boolean available = false;
		JSONObject jsonObj= new JSONObject();
		mpVO.setPass(DataEncrypt.messageDigest("MD5", mpVO.getPass()));
		
		jsonObj.put("available", available);
		jsonObj.put("msg", "잘못된 비밀번호 입니다.");
		
		if(mpd.selectPass(mpVO) != null) {
		available =true; 
		}//end if
		
		if(available) {
			jsonObj.put("available", available);
			jsonObj.put("msg", "올바른 비밀번호 입니다.");
		}//end if
		
		return jsonObj.toJSONString();
		
		
	}//checkPass
	
	public int modifyPass(ModifyPassVO mpVO) throws NoSuchAlgorithmException {
		int result=0;
		mpVO.setNewPass(DataEncrypt.messageDigest("MD5", mpVO.getNewPass()));
		
		result=mpd.updatePass(mpVO);
		
		return result;
	}//modifyPass

}//class
