package kr.co.sist.prj3;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisHandler {

	private static MyBatisHandler mbh;
	private static SqlSessionFactory ssf;
	
	private MyBatisHandler() {
		org.apache.ibatis.logging.LogFactory.useLog4JLogging();
	}//MyBatisHandler
	
	
	
	public static MyBatisHandler getInstance() {
		if(mbh==null) {
			mbh=new MyBatisHandler();
		}//end if
		
		return mbh;
	}//getInstance
	
	
	private SqlSessionFactory getSqlSessionFactory() {
		if(ssf==null) {
			
			//1. 설정 파일과 연결
			try {
				Reader reader = Resources.getResourceAsReader("kr/co/sist/prj3/myBatis-Config.xml");
				
				//2.MyBatis Framework 생성
				ssf = new SqlSessionFactoryBuilder().build(reader);
				
				//3. 스트림 끊기
				if(reader!=null) {reader.close();}

			
			} catch (IOException e) {
			}//end catch
			
			
		}//end if
		
		return ssf;
		
	}//getSqlSessionFactory
	
	
	
	public SqlSession getMyBatisHandler(boolean commitFlag) {
		
		return getSqlSessionFactory().openSession();
		
	}//getMyBatisHandler
	
	
}//class
