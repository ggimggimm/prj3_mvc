package kr.co.sist.prj3.admin.regmovie.vo;

import java.util.Arrays;

/**
 * 영화등록 감독정보VO
 * @author user
 */
public class AdminDirectVO {
	
	private int d_num,m_num;
	private String d_name,d_eng,d_img;
	
	public int getD_num() {
		return d_num;
	}
	public void setD_num(int d_num) {
		this.d_num = d_num;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_eng() {
		return d_eng;
	}
	public void setD_eng(String d_eng) {
		this.d_eng = d_eng;
	}
	public String getD_img() {
		return d_img;
	}
	public void setD_img(String d_img) {
		this.d_img = d_img;
	}
	@Override
	public String toString() {
		return "AdminDirectVO [d_num=" + d_num + ", m_num=" + m_num + ", d_name=" + d_name + ", d_eng=" + d_eng
				+ ", d_img=" + d_img + "]";
	}
	
	


	
	
	
	

}//class
