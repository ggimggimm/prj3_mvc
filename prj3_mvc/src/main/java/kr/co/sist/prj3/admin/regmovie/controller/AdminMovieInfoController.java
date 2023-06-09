package kr.co.sist.prj3.admin.regmovie.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.prj3.admin.regmovie.service.AdminMovieRegistService;
import kr.co.sist.prj3.admin.regmovie.vo.AdminActorVO;
import kr.co.sist.prj3.admin.regmovie.vo.AdminDirectVO;
import kr.co.sist.prj3.admin.regmovie.vo.AdminMovieVO;

/**
 * 영화등록컨트롤러
 * @author user
 */
@Controller
public class AdminMovieInfoController {
	
	@Autowired(required=false)
	private AdminMovieRegistService amrs;
	
	
	//영화등록
	@GetMapping("/movie_regist.do")//영화등록.do
	public String adminMovieRegist() {
		
		
		return "movie_regist/movie_regist";
	}//adminMovieRegist
	
	
	//영화등록페이지 값 넘기기
	@PostMapping("/movie_success.do")//영화관리.do  -> 민경이 영화관리페이지로이동
	public String adminMovieRegistProcess(HttpServletRequest request) {
		File saveDir=new File("C:/Users/user/git/prj3_mvc/prj3_mvc/src/main/webapp/images");
		int fileSize=1024*1024*30;
		
		 try {
			 MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), fileSize, "UTF-8", new DefaultFileRenamePolicy());
			 
			 	//m_num을 조회 변수에 저장 : select 영화추가시퀀스.nextval dual;
	            int m_num=amrs.sequenceNum();
	            
	            //영화정보등록
	            String poster = mr.getFilesystemName("poster");
	            
	            String m_title = mr.getParameter("m_title");
	            String eng_title = mr.getParameter("eng_title");
	            String genre = mr.getParameter("genre");
	            String run_time = mr.getParameter("run_time");
	            String rank = mr.getParameter("rank");
	            String country = mr.getParameter("country");
	            String summary = mr.getParameter("summary");
	            String origin = mr.getParameter("origin");
	            String script = mr.getParameter("script");
	            String produce = mr.getParameter("produce");
	            String ration = mr.getParameter("ration");
	            String imports = mr.getParameter("imports");
	            String release_date = mr.getParameter("release_date");
	            
	            AdminMovieVO amVO=new AdminMovieVO();
	            amVO.setM_num(m_num);
	            amVO.setM_title(m_title);
	            amVO.setEng_title(eng_title);
	            amVO.setGenre(genre);
	            amVO.setRun_time(run_time);
	            amVO.setRank(rank);
	            amVO.setCountry(country);
	            amVO.setSummary(summary);
	            amVO.setOrigin(origin);
	            amVO.setScript(script);
	            amVO.setProduce(produce);
	            amVO.setRation(ration);
	            amVO.setImports(imports);
	            amVO.setRelease_date(release_date);
	            amVO.setPoster(poster);
	            
	            // 데이터 삽입 처리
	            amrs.addMovieInfo(amVO);
	            
	            
	            
	            //감독정보 저장
	            int count = 0;
	            String fileCount = mr.getParameter("fileLeng");
	            if(fileCount==null || fileCount.equals("")) {
	            	count=0;
	            }else {
	                count = Integer.parseInt(fileCount);
	            }
	            
	            AdminDirectVO[] adVO = new AdminDirectVO[count+1];
	            String d_img=mr.getFilesystemName("d_img0");
	            String d_name=mr.getParameter("d_name0");
	            String d_eng=mr.getParameter("d_eng0");
	            
	            AdminDirectVO adVO1 = new AdminDirectVO();
	            adVO1.setM_num(m_num);
	            adVO1.setD_name(d_name);
	            adVO1.setD_img(d_img);
	            adVO1.setD_eng(d_eng);
	            adVO[0]=adVO1;
	            
	            AdminDirectVO adVOTemp=null;
                for(int i=0 ; i < count ; i++) {
                	
                	adVOTemp=new AdminDirectVO();
                	d_img=mr.getFilesystemName("d_img"+(i+1));
                	d_name=mr.getParameter("d_name"+(i+1));
                	d_eng=mr.getParameter("d_eng"+(i+1));
                	
                	
                	
                	
                	adVOTemp.setM_num(m_num); // 여기 반복분에 m_num 안넣었음.. 그래서 추가된거에대한 m_num 값이 없언던거임..
                	adVOTemp.setD_name(d_name);
                	adVOTemp.setD_img(d_img);
                	adVOTemp.setD_eng(d_eng);
      	            
      	            adVO[i+1]=adVOTemp;
      	            
                }//end for
                
	                amrs.addDirectorInfo(adVO);
	                
	            //출연진정보 저장
	            int countA=0;
	            String fileCountA = mr.getParameter("fileLengA");
		        if(fileCountA==null || fileCountA.equals("")) {
		        	countA=0;
		        }else {
		        	countA = Integer.parseInt(fileCountA);
		        }
		            
		            
	            AdminActorVO[] aaVO=new AdminActorVO[countA+1];
	            String a_img=mr.getFilesystemName("a_img0");
	            String a_name=mr.getParameter("a_name0");
	            String a_eng=mr.getParameter("a_eng0");
	            String role=mr.getParameter("role0");
	            
	            AdminActorVO aaVO1=new AdminActorVO();
	            aaVO1.setM_num(m_num);
	            aaVO1.setA_img(a_img);
	            aaVO1.setA_name(a_name);
	            aaVO1.setA_eng(a_eng);
	            aaVO1.setRole(role);
	            aaVO[0]=aaVO1;
	            System.out.println("--------"+aaVO1.getA_name());
	            AdminActorVO aaVOTemp=null;
	            
	            for(int i=0 ; i < countA ; i++) {
                	
	            	aaVOTemp=new AdminActorVO();
	            	
	            	a_img=mr.getFilesystemName("a_img"+(i+1));
	            	a_name=mr.getParameter("a_name"+(i+1));
	            	a_eng=mr.getParameter("a_eng"+(i+1));
	            	role=mr.getParameter("role"+(i+1));
	            	
	            	
	            	aaVOTemp.setM_num(m_num); // 여기 반복분에 m_num 안넣었음.. 그래서 추가된거에대한 m_num 값이 없언던거임..
	            	aaVOTemp.setA_img(a_img);
	            	aaVOTemp.setA_name(a_name);
	            	aaVOTemp.setA_eng(a_eng);
	            	aaVOTemp.setRole(role);
      	            
	            	aaVO[i+1]=aaVOTemp;
      	            
                }//end for
	            
	            amrs.addActorInfo(aaVO);
	            
	            
	            

	        } catch (IOException e) {
	            e.printStackTrace();
	        }//end catch
		
		
		return "redirect:movie_list.do";
	}//adminMovieRegistProcess
	

}//class
