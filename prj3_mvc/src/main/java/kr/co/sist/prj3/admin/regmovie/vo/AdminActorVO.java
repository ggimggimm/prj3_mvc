package kr.co.sist.prj3.admin.regmovie.vo;

import java.util.Arrays;

/**
 * 영화등록 배우정보VO
 * @author user
 */
public class AdminActorVO {
	private int a_num,m_num;
	private String a_name,a_eng,a_img,role;
	
	
	public AdminActorVO() {
	}


	public AdminActorVO(int a_num, int m_num, String a_name, String a_eng, String a_img, String role) {
		super();
		this.a_num = a_num;
		this.m_num = m_num;
		this.a_name = a_name;
		this.a_eng = a_eng;
		this.a_img = a_img;
		this.role = role;
	}


	public int getA_num() {
		return a_num;
	}


	public void setA_num(int a_num) {
		this.a_num = a_num;
	}


	public int getM_num() {
		return m_num;
	}


	public void setM_num(int m_num) {
		this.m_num = m_num;
	}


	public String getA_name() {
		return a_name;
	}


	public void setA_name(String a_name) {
		this.a_name = a_name;
	}


	public String getA_eng() {
		return a_eng;
	}


	public void setA_eng(String a_eng) {
		this.a_eng = a_eng;
	}


	public String getA_img() {
		return a_img;
	}


	public void setA_img(String a_img) {
		this.a_img = a_img;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	@Override
	public String toString() {
		return "AdminActorVO [a_num=" + a_num + ", m_num=" + m_num + ", a_name=" + a_name + ", a_eng=" + a_eng
				+ ", a_img=" + a_img + ", role=" + role + "]";
	}

	


	
	
	

}//class
