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
	 * ��� ����Ʈ ����
	 * @param rvNum
	 * @return
	 */
	public List<AllDomain> selectComment ( int rv_num ) {
		
		List<AllDomain> list = null;
		
		// 1.MyBatis �ڵ鷯 ���
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler�� ����ϱ�
		list = ss.selectList("kr.co.sist.prj3.Mapper.selectComment", rv_num);

	
		// 4. ���� ����
		if (ss != null) {
			ss.close();
		} // end if

		return list;
		
	}//selectComments
	
	/**
	 * ��� ����Ʈ ����
	 * @param rvNum
	 * @return
	 */
	public List<AllDomain> selectReply ( int rv_num ) {
		
		List<AllDomain> list = null;
		
		// 1.MyBatis �ڵ鷯 ���
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		// 2. Handler�� ����ϱ�
		list = ss.selectList("kr.co.sist.prj3.Mapper.selectReply", rv_num);
		
		
		// 4. ���� ����
		if (ss != null) {
			ss.close();
		} // end if
		
		return list;
		
	}//selectComments
	
	/**
	 * ��� ������Ʈ
	 */
	public int updateComment( int com_num ) {
		
		int cnt = 0;
		
		//1.MyBatis �ڵ鷯 ���
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler�� ����ϱ�
		cnt = ss.update("updateComm", com_num);		
		
		//3. transaction �Ϸ��ϱ�
				if(cnt==1) {
					ss.commit();
				}
				
		//4. ���� ����
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
		
	}//updateComment

	/**
	 * ���� ������Ʈ
	 * @param replyNum
	 * @return
	 */
	public int updateReply( int rp_num ) {
		
		int cnt = 0;
		
		//1.MyBatis �ڵ鷯 ���
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler�� ����ϱ�
		cnt = ss.update("updateReply", rp_num);		
		
		//3. transaction �Ϸ��ϱ�
		if(cnt==1) {
			ss.commit();
		}
		
		//4. ���� ����
		if(ss!=null) {ss.close();}//end if
		
		return cnt;
		
	}//updateReplyService
	
	/**
	 * ��� ��� - ajax
	 * @param cmVO
	 */
	public int insertComment( CommVO cmVO ) {
		
		int cnt = 0;
		
		//1.MyBatis �ڵ鷯 ���
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler�� ����ϱ�
		cnt = ss.insert("insertComment", cmVO);		
		
		//3. transaction �Ϸ��ϱ�
				if(cnt==1) {
					ss.commit();
				}
				
		//4. ���� ����
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
	}//insertComment

	/**
	 * ���� ���
	 * @param rpVO
	 */
	public int insertReply( ReplyVO rpVO ) {
		
		int cnt = 0;
		
		//1.MyBatis �ڵ鷯 ���
		SqlSession ss =MyBatisHandler.getInstance().getMyBatisHandler(false);
		
		//2. Handler�� ����ϱ�
		cnt = ss.insert("insertReply", rpVO);		
		
		//3. transaction �Ϸ��ϱ�
				if(cnt==1) {
					ss.commit();
				}
				
		//4. ���� ����
				if(ss!=null) {ss.close();}//end if
				
		return cnt;
	}//insertReply
	

	/**
	 * ������ ���� ����� ����
	 * @param comNum
	 * @return
	 */
	public int deleteComment ( int comNum ) {
		
		int result = 0;
		return result;
		
		
	}//deleteComment

	
	/**
	 * ��� ����Ʈ ����
	 * @param rvNum
	 * @return
	 */
	public List<CommentDomain> selectComments ( int rv_num ) {
		
		List<CommentDomain> list = null;
		
		// 1.MyBatis �ڵ鷯 ���
		SqlSession ss = MyBatisHandler.getInstance().getMyBatisHandler(false);

		// 2. Handler�� ����ϱ�
		list = ss.selectList("selectComms", rv_num);

	
		// 4. ���� ����
		if (ss != null) {
			ss.close();
		} // end if

		return list;
		
	}//selectComments
	
	
	
	/**
	 * ���� ����Ʈ ����
	 * @param comNum
	 * @return
	 */
	public List<ReplyDomain> selectReplies (int comNum ) {
		
		List<ReplyDomain> list = null;
		return list;
		
		
		
	}//selectReplies




	
	
}//class
