package kr.co.sist.prj3.user.resmovie.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.prj3.user.resmovie.domain.ReserveMovieDomain;
import kr.co.sist.prj3.user.resmovie.service.ReserveMovieService;
import kr.co.sist.prj3.user.resmovie.vo.ReservationInfoVO;
import kr.co.sist.prj3.user.resmovie.vo.ReservationVO;

@Controller
@SessionAttributes({"titles","rVO"})
public class ReservationController {
	
	@Autowired(required = false)
	private ReserveMovieService rms;
	
	@GetMapping("/movie_reserve.do")
	public String reservationMovie(Model model) {
		
		//영화 제목 받아오기
		model.addAttribute("titles",rms.showMovieTitle());
		
		
	return "movie_reservation/movie_reserve";
	}//reservationMovie
	
	@GetMapping("/movie_date.do")
	@ResponseBody
	public String movieDate(int m_num, Model model) {
		String jsonObj="";
		
		model.addAttribute("m_num", m_num);
		jsonObj=rms.showMovieDate(m_num);
		
		return jsonObj;
	}//movieDate
	
	//시간 ajax
	@GetMapping("/movie_hour.do")
	@ResponseBody
	public String movieHour(int m_num) {
		String jsonObj="";
		
		jsonObj=rms.showMovieTime(m_num);
		
		return jsonObj;
	}//movieHour
	
	@GetMapping("/seat_reserve.do")
	public String reservationSeat(ReservationInfoVO riVO, Model model) {
		
		int m_num=riVO.getM_num();
		
		model.addAttribute("riVO", riVO);
		model.addAttribute("seats",rms.reservationService(riVO));
		model.addAttribute("mInfo", rms.showMovieInfo(m_num));
		
		//System.out.println(rms.reservationService(riVO));
		
		return "movie_reservation/seat_reserve";
	}//reservationSeat
	
	@GetMapping("/reserve_success.do")
	public String reservationProcess(ReservationVO rVO, Model model) {
		
		String[] seatData= rVO.getSeatData();
		
		int r_num=rms.getKey();
		rVO.setR_num(r_num);
		
		System.out.println(rVO);
		
		model.addAttribute("rVO", rVO);
		
		rms.addReservation(rVO);
		rms.addSeats(rVO);
		
		
		int resSeat = rms.showSeat(rVO);
		int resPeriod = rms.showPeriod(rVO);
		int resTime = rms.showTime(rVO);
		
		int i = 60*resPeriod*resTime;
		int result=(resSeat* 100);
		double r_rate=result/i;
		
		rVO.setR_rate(r_rate);
		
		
		
		rms.addRate(rVO);
		
		return "movie_reservation/reserve_success";
	}//reservationProcess
	
	/*@GetMapping("/kakaoPay.do")
	@ResponseBody
	public String kakaoPay() {
		
		try {
			URL url=new URL("https://kapi.kakao.com/v1/payment/ready");
			
			HttpURLConnection connection=(HttpURLConnection)url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", "KakaoAK 36bda543b8327ee6cf598396835c0412");
			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connection.setDoOutput(true);
			
			String parameter="cid=TC0ONETIME"
					+"&partner_order_id=partner_order_id"
					+"&partner_user_id=partner_user_id"
					+"&item_name=조커" //상품명
					+"&quantity=1" //수량
					+"&total_amount=20000" //총 금액
					+"&vat_amount=200"
					+"&tax_free_amount=0"
					+"&approval_url=http://localhost/success"
					+"&fail_url=http://localhost"
					+"&cancel_url=http://localhost";
			
			System.out.println( parameter);
			OutputStream os= connection.getOutputStream();
			DataOutputStream dos=new DataOutputStream(os);
			dos.writeBytes(parameter);
			dos.close();
			
			int result=connection.getResponseCode();
			
			InputStream input;
			
			if(result == 200) {
				input = connection.getInputStream();
			}else {
				input=connection.getErrorStream();
			}//end else
			
			InputStreamReader reader=new InputStreamReader(input);
			BufferedReader br=new BufferedReader(reader);
			
			return br.readLine();
			
			
			
		}catch (MalformedURLException e) {
			e.printStackTrace();
		}catch (IOException ie) {
			ie.printStackTrace();
		}//end catch
		
		return "";
	}//kakaoPay*/
	
	
	
	

}//class
