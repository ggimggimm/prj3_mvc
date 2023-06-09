package kr.co.sist.prj3.admin.admin_movie.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.prj3.admin.admin_movie.service.AdminMovieService;
import kr.co.sist.prj3.admin.admin_movie.vo.ActorVO;
import kr.co.sist.prj3.admin.admin_movie.vo.DirectorVO;
import kr.co.sist.prj3.admin.admin_movie.vo.EditMovieVO;

@Controller
public class AdminMovieController {

	@Autowired(required=false)
	private AdminMovieService ams;
	
	// 영화 관리
	@RequestMapping(value="/movie_list.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String movieListFrm(String m_title, Model model) throws PersistenceException {
		model.addAttribute("list", ams.searchMovieList(m_title));
		
		return "/admin_movie/movie_list";
	}// movieListFrm
	
	@RequestMapping(value="/select_list.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String selectMovieList(String select_type, Model model) throws PersistenceException {
		model.addAttribute("list", ams.searchMovieState(select_type));
		
		return "/admin_movie/movie_list";
	}// movieListFrm
	
	// 한줄평 관리
	@GetMapping("/movie_grade.do")
	// 검색 결과를 위한 String m_title값
	public String movieGradeFrm(Model model) throws PersistenceException {

		//한줄평 정보들 select
		model.addAttribute("gradelist", ams.searchGradeList());
		return "admin_movie/movie_grade";
	}//movieGradeFrm
	
	// 한줄평 select 이후
	// 한줄평 삭제
	@GetMapping("/movie_grade_delete.do")
	public String movieGradeDeleteFrm(int g_num) throws PersistenceException {
		
		//한줄평 삭제
		ams.deleteGrade(g_num);
		System.out.println();
		
		return "redirect:movie_grade.do";
	}//movieGradeFrm
	
	// 영화 수정
	@PostMapping("/movie_edit.do")
	public String editMovieFrm(int mNum, Model model) throws PersistenceException {
		
		// 영화 정보 select
		model.addAttribute("emd", ams.searchMovie(mNum));
		
		model.addAttribute("dList", ams.searchDirector(mNum));
		model.addAttribute("aList", ams.searchActor(mNum));
		
		return "admin_movie/movie_edit";
	}
	
	
	@PostMapping("/movie_process.do")
	public String editMovieProcess(HttpServletRequest request) {
		
		File saveDir=new File("C:/Users/overy/git/prj3_mvc/prj3_mvc/src/main/webapp/images");
		int fileSize=1024*1024*30;
		
		 try {
			 MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), fileSize, "UTF-8", new DefaultFileRenamePolicy());
			 
			 	//m_num을 조회 변수에 저장 : select 영화추가시퀀스.nextval dual;
	            int m_num = Integer.parseInt(mr.getParameter("m_num"));
	            System.out.println(m_num);
	            
	            
	            //영화정보등록
	            String poster = mr.getParameter("poster");
	            
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
	            
	            EditMovieVO emVO = new EditMovieVO();
	            emVO.setM_num(m_num);
	            emVO.setM_title(m_title);
	            emVO.setEng_title(eng_title);
	            emVO.setGenre(genre);
	            emVO.setRun_time(run_time);
	            emVO.setRank(rank);
	            emVO.setCountry(country);
	            emVO.setSummary(summary);
	            emVO.setOrigin(origin);
	            emVO.setScript(script);
	            emVO.setProduce(produce);
	            emVO.setRation(ration);
	            emVO.setImports(imports);
	            emVO.setRelease_date(release_date);
	            emVO.setPoster(poster);
	            
	            System.out.println(emVO);
	            // 데이터 삽입 처리
	            ams.modifyMovie(emVO);
	            
			 
	            // 감독정보 저장
	            int count = 0;
	            String fileCount = mr.getParameter("fileLeng");
	            if (fileCount == null || fileCount.equals("")) {
	                count = 0;
	            } else {
	                count = Integer.parseInt(fileCount);
	            }

	            if (count > 0) {
	                DirectorVO[] dVO = new DirectorVO[count];

	                DirectorVO dVOTemp = null;
	                for (int i = 0; i < count; i++) {
	                    dVOTemp = new DirectorVO();
	                    String d_img = mr.getFilesystemName("d_img" + (i+1));
	                    String d_name = mr.getParameter("d_name" + (i+1));
	                    String d_eng = mr.getParameter("d_eng" + (i+1));
	                    String d_hidden = mr.getParameter("hd_img0");

	                    dVOTemp.setM_num(m_num);
	                    dVOTemp.setD_name(d_name);

	                    if (d_img == null) {
	                        dVOTemp.setD_img(d_hidden);
	                    } else {
	                    	dVOTemp.setD_img(d_img);
	                    }

	                    dVOTemp.setD_eng(d_eng);

	                    dVO[i] = dVOTemp;
	                }

	                ams.addDirector(dVO);
	                System.out.println("감독 insert");
	            }
				 
				//출연진정보 저장 
				int countA = 0; 
				
				String fileCountA = mr.getParameter("fileLengA");
				if(fileCountA==null || fileCountA.equals("")) { 
					countA=0; 
				}else { 
					countA = Integer.parseInt(fileCountA); 
				}
				 
				if(countA > 0) {
					ActorVO[] aVO = new ActorVO[countA]; 
				
					ActorVO aVOTemp = null;
					for(int i=0 ; i < countA ; i++) {
				 
						aVOTemp = new ActorVO(); 
						
						String a_img=mr.getFilesystemName("a_img" + (i+1)); 
						String a_hidden = mr.getParameter("ad_img0");
						String a_name=mr.getParameter("a_name" + (i+1)); 
						String a_eng=mr.getParameter("a_eng" + (i+1));
						String role=mr.getParameter("role" + (i+1));
						
						aVOTemp.setM_num(m_num);  
						aVOTemp.setA_name(a_name);
						
						if (a_img == null) {
							aVOTemp.setA_img(a_hidden); 
	                    } else {
	                    	aVOTemp.setA_img(a_img); 
	                    }// end else

						aVOTemp.setA_eng(a_eng);
						aVOTemp.setRole(role);
				 
						aVO[i]=aVOTemp;
				 
					}//end for
					ams.addActor(aVO);
	                System.out.println("배우 insert");
					
				}// end if
				 
		 } catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:movie_list.do";
	}
	
	// 감독 delete
	@RequestMapping(value="/movie_process2.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String editMovieProcess2(HttpServletRequest request) {
		// 감독 delete
		System.out.println("감독 delete");
		int d_num = Integer.parseInt(request.getParameter("d_num"));
		ams.removeDirector(d_num);
		
		return "redirect:/movie_process.do";
	}
	
	// 배우 delete
	@RequestMapping(value="/movie_process3.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String editMovieProcess3(HttpServletRequest request) {
		
		// 배우 delete
		System.out.println("배우 delete");
		int a_num = Integer.parseInt(request.getParameter("a_num"));
		ams.removeActor(a_num);
		
		return "redirect:/movie_process.do";
	}
	
	
}
