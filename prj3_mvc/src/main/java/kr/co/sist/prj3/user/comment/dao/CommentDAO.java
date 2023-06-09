package kr.co.sist.prj3.user.comment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.prj3.MyBatisHandler;
import kr.co.sist.prj3.user.comment.domain.AllDomain;
import kr.co.sist.prj3.user.comment.domain.CommentDomain;
import kr.co.sist.prj3.user.comment.domain.ReplyDomain;
import kr.co.sist.prj3.user.comment.vo.CommVO;
import kr.co.sist.prj3.user.comment.vo.ReplyVO;

@Component
public class CommentDAO {

	
	/**
	 * 댓글 리스트 셀렉
	 * @param rvNum
	 * @return
	 */
	public List<AllDomain> selectComment ( int rv_num ) {
		
		List<AllDomain> list = null;
		
		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		list = ss.selectList("kr.co.sist.prj3.Mapper.selectComment", rv_num);

	
		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return list;
		
	}//selectComments
	
	/**
	 * 댓글 리스트 셀렉
	 * @param rvNum
	 * @return
	 */
	public List<AllDomain> selectReply ( int rv_num ) {
		
		List<AllDomain> list = null;
		
		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		// 2. Handler를 사용하기
		list = ss.selectList("kr.co.sist.prj3.Mapper.selectReply", rv_num);
		
		
		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if
		
		return list;
		
	}//selectComments
	
	/**
	 * 댓글 업데이트
	 */
	public int updateComment( int com_num ) {
		
		int cnt = 0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		cnt = ss.update("updateComm", com_num);		
		
		//3. transaction 완료하기
				if(cnt==1) {
					ss.commit();
				}
				
		//4. 연결 끊기
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
		
	}//updateComment

	/**
	 * 대댓글 업데이트
	 * @param replyNum
	 * @return
	 */
	public int updateReply( int rp_num ) {
		
		int cnt = 0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		cnt = ss.update("updateReply", rp_num);		
		
		//3. transaction 완료하기
		if(cnt==1) {
			ss.commit();
		}
		
		//4. 연결 끊기
		if(ss!=null) {ss.close();}//end if
		
		return cnt;
		
	}//updateReplyService
	
	/**
	 * 댓글 등록 - ajax
	 * @param cmVO
	 */
	public int insertComment( CommVO cmVO ) {
		
		int cnt = 0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		cnt = ss.insert("insertComment", cmVO);		
		
		//3. transaction 완료하기
				if(cnt==1) {
					ss.commit();
				}
				
		//4. 연결 끊기
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
	}//insertComment

	/**
	 * 대댓글 등록
	 * @param rpVO
	 */
	public int insertReply( ReplyVO rpVO ) {
		
		int cnt = 0;
		
		//1.MyBatis 핸들러 얻기
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler를 사용하기
		cnt = ss.insert("insertReply", rpVO);		
		
		//3. transaction 완료하기
				if(cnt==1) {
					ss.commit();
				}
				
		//4. 연결 끊기
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
	}//insertReply
	

	/**
	 * 대댓글이 없는 댓글은 삭제
	 * @param comNum
	 * @return
	 */
	public int deleteComment ( int comNum ) {
		
		int result = 0;
		return result;
		
		
	}//deleteComment

	
	/**
	 * 댓글 리스트 셀렉
	 * @param rvNum
	 * @return
	 */
	public List<CommentDomain> selectComments ( int rv_num ) {
		
		List<CommentDomain> list = null;
		
		// 1.MyBatis 핸들러 얻기
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler를 사용하기
		list = ss.selectList("selectComms", rv_num);

	
		// 4. 연결 끊기
		if (ss != null) {
			ss.close();
		} // end if

		return list;
		
	}//selectComments
	
	
	
	/**
	 * 대댓글 리스트 셀렉
	 * @param comNum
	 * @return
	 */
	public List<ReplyDomain> selectReplies (int comNum ) {
		
		List<ReplyDomain> list = null;
		return list;
		
		
		
	}//selectReplies




	
	
}//class
