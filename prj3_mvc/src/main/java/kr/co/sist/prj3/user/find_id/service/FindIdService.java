package kr.co.sist.prj3.user.find_id.service;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.find_id.dao.FindIdDAO;
import kr.co.sist.prj3.user.find_id.domain.ResultIdDomain;
import kr.co.sist.prj3.user.find_id.vo.FindIdVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Component
public class FindIdService {

	@Autowired(required = false)
	private FindIdDAO fiDAO;
	
	
	public ResultIdDomain findService(FindIdVO fiVO) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException {
		ResultIdDomain rid=null;
		
		DataEncrypt de = new DataEncrypt("FsRt4SfY4US0IWtK4JPJsw==");
		fiVO.setName(de.encryption(fiVO.getName()));
		fiVO.setEmail(de.encryption(fiVO.getEmail()));
		rid = fiDAO.selectFindId(fiVO);
		
		return rid;
		
	}//findService
	
}//class
