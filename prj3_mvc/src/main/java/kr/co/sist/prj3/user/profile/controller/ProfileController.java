package kr.co.sist.prj3.user.profile.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.prj3.user.join.service.JoinService;
import kr.co.sist.prj3.user.login.domain.LoginResultDomain;
import kr.co.sist.prj3.user.profile.service.ProfileService;
import kr.co.sist.prj3.user.profile.vo.ProfileModifyVO;

/**
 * ������ ��Ʈ�ѷ�
 * @author user
 *
 */ 

@Controller
@SessionAttributes("lrDomain")
public class ProfileController {

	@Autowired(required = false)
	private ProfileService pService;
	
	@Autowired(required = false)
	private JoinService jService;
	
	/**
	 * ������ ���� �� �����ֱ�
	 * @param model
	 * @return
	 * @throws UnsupportedEncodingException 
	 * @throws GeneralSecurityException 
	 * @throws NoSuchAlgorithmException 
	 */
	@RequestMapping(value="/my_profile.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String profileFrm( Model model ) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException {
		
		//�α��� �ߴ��� Ȯ�� �� ���ǿ��� ������
		LoginResultDomain lrDomain=(LoginResultDomain)model.getAttribute("lrDomain");
		String user_id=lrDomain.getUser_id();
		model.addAttribute("profile", pService.profileSetService(user_id));
		
		return "/profile/my_profile";
		
	}//profileFrm

	
	/**
	 * �г��� �ߺ�Ȯ�� - ajax�� �������� ok
	 * @param nickName
	 * @return
	 * @throws GeneralSecurityException 
	 * @throws UnsupportedEncodingException 
	 * @throws NoSuchAlgorithmException 
	 */
	@PostMapping("/nick_dup.do")
	@ResponseBody
	public String nickDupProcess( String nick_name) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String jsonObj="";
		jsonObj =jService.nickDupService(nick_name);
		return jsonObj;
		
	}//nickDupProcess
	
	
	
	 
	/**
	 * ������ ����(update)
	 * @param model
	 * @param request
	 * @return
	 */
	@PostMapping("/modify_profile.do")
	public String profileModifyProcess(HttpServletRequest request) {

		String movePage="";
		

		// 1.���� ���� ��� ���
		File saveDir = new File("C:/Users/overy/git/prj3_mvc/prj3_mvc/src/main/webapp/upload");
		int fileSize = 1024 * 1024 * 30; // 30MB

		try {
			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), fileSize, "UTF-8",
					new DefaultFileRenamePolicy());

			ProfileModifyVO pVO = new ProfileModifyVO();
			pVO.setUser_id(mr.getParameter("user_id"));
			pVO.setProfile_msg(mr.getParameter("profile_msg"));
			pVO.setNick_name(mr.getParameter("nick_name"));

			// �����ʸ� ó��
			String fileName = mr.getFilesystemName("profile_upload_file");
			System.out.println(fileName);
			
			
			if (fileName == null) { // ���� ������ ���� - ���� ���Ϸ� ���ϸ� ����
				fileName = mr.getParameter("profile");
			} // end if

			pVO.setProfile(fileName);

			
			//update ��������
			if(pService.profileModifyService(pVO)) {//����
				movePage = "forward:mypage.do";
			}//end if
			
			
		} catch (IOException e) {
			e.printStackTrace();
		} // end catch

			return movePage;
		
	}// profileModifyProcess
	
	
}//class
