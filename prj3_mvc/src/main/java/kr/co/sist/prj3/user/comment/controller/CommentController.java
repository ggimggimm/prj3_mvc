package kr.co.sist.prj3.user.comment.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.prj3.user.comment.service.CommentService;
import kr.co.sist.prj3.user.comment.vo.CommVO;
import kr.co.sist.prj3.user.comment.vo.ReplyVO;

/**
 * ��� ��Ʈ�ѷ�
 * @author user
 *
 */
@Controller
public class CommentController {

	@Autowired(required = false)
	private CommentService commService;

	/**
	 * ��� ��� - ajax
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="/add_comment.do" , method= {RequestMethod.POST,RequestMethod.GET})
	public String addCommentProcess( CommVO cVO, int rv_num, String m_title, Integer m_num ) throws UnsupportedEncodingException  {
		String resultPage="";
		
		String encodedMTitle = URLEncoder.encode(m_title, "UTF-8");
		
		if(commService.addCommentService(cVO)) {
			System.out.println("��� ��� ����");
			resultPage="redirect:/review_post.do?rv_num="+rv_num+"&m_title="+encodedMTitle+"&m_num="+m_num;
		
		}//end if
		
		return resultPage;
		
	}//addCommentProcess

	/**
	 * ���� ��� - ajax
	 * @param rpVO
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="/add_reply.do" , method= {RequestMethod.POST,RequestMethod.GET})
	public String addReplyProcess( ReplyVO rpVO, int rv_num, String m_title, Integer m_num ) throws UnsupportedEncodingException   {
		String resultPage="";
		
		String encodedMTitle = URLEncoder.encode(m_title, "UTF-8");
		
		if(commService.addReplyService(rpVO)) {
			resultPage="redirect:/review_post.do?rv_num="+rv_num+"&m_title="+encodedMTitle+"&m_num="+m_num;
		}//end if
		
		return resultPage;
	
	}//addReplyProcess
	

	/**
	 * ��� ����(Ȥ�� ����)
	 * @param comNum ��۹�ȣ
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="/delete_comment.do" , method= {RequestMethod.POST,RequestMethod.GET})
	public String removeCommentProcess( int com_num, int rv_num, String m_title, Integer m_num) throws UnsupportedEncodingException  {
		
		String resultPage="";
		
		String encodedMTitle = URLEncoder.encode(m_title, "UTF-8");
		System.out.println(com_num);
		if(commService.updateCommentService(com_num)) {
			System.out.println("��� ���� ����");
			resultPage="redirect:/review_post.do?rv_num="+rv_num+"&m_title="+encodedMTitle+"&m_num="+m_num;
		}//end if
		
		return resultPage;

	}//removeCommentProcess
	
	/**
	 * ���� ����(Ȥ�� ����)
	 * @param comNum ��۹�ȣ
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="/delete_reply.do" , method= {RequestMethod.POST,RequestMethod.GET})
	public String removeReplyProcess( int rp_num, int rv_num, String m_title, Integer m_num) throws UnsupportedEncodingException  {
		
		String resultPage="";
		
		String encodedMTitle = URLEncoder.encode(m_title, "UTF-8");
		System.out.println(rp_num);
		if(commService.updateReplyService(rp_num)) {
			System.out.println("���� ���� ����");
			resultPage="redirect:/review_post.do?rv_num="+rv_num+"&m_title="+encodedMTitle+"&m_num="+m_num;
		}//end if
		
		return resultPage;
		
	}//removeCommentProcess
	
}//class
