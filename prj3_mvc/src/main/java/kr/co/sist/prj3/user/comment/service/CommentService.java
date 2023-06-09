package kr.co.sist.prj3.user.comment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.user.comment.dao.CommentDAO;
import kr.co.sist.prj3.user.comment.domain.AllDomain;
import kr.co.sist.prj3.user.comment.vo.CommVO;
import kr.co.sist.prj3.user.comment.vo.ReplyVO;

/**
 * 댓글 서비스
 * @author user
 *
 */
@Component
public class CommentService {

	@Autowired(required = false)
	private CommentDAO commDAO;

	public List<AllDomain> getCommList(int rv_num){
		List<AllDomain> list = null;
		
		list = commDAO.selectComment(rv_num);
		
		return list;
		
	}//getCommList

	public List<AllDomain> getReplyList(int rv_num){
		List<AllDomain> list = null;
		
		list = commDAO.selectReply(rv_num);
		
		return list;
		
	}//getReplyList
	
	
	/**ㅇ
	 * 댓글 등록 - ajax
	 * @param cmVO
	 */
	public boolean addCommentService( CommVO cmVO ) {
		
		boolean success=false;
		success = commDAO.insertComment(cmVO)==1;
		return success;
		
	}//insertComment

	/**ㅇ
	 * 대댓글 등록
	 * @param rpVO
	 */
	public boolean addReplyService( ReplyVO rpVO ) {
		
		boolean success=false;
		success = commDAO.insertReply(rpVO)==1;
		return success;
		
	}//insertReply

	
	/**ㅇ
	 * 댓글 업데이트
	 */
	public boolean updateCommentService  (int com_num ) {
		
		boolean success=false;
		success = commDAO.updateComment(com_num)==1;
		return success;
		
	}//deleteComment

	/**ㅇ
	 * 대댓글 업데이트
	 */
	public boolean updateReplyService  (int rp_num ) {
		
		boolean success=false;
		success = commDAO.updateReply(rp_num)==1;
		return success;
		
	}//deleteComment
	
}//class
