package kr.co.sist.prj3.user.comment.domain;

public class AllDomain {

	private int rv_num; //¸®ºä¹øÈ£
	private int com_num; //´ñ±Û¹øÈ£
	private String c_user_id; //´ñ±Û¾ÆÀÌµð
	private String c_nick_name; //´ñ±Û´Ð³×ÀÓ
	private String c_profile; //´ñ±ÛÀÌ¹ÌÁö
	private String c_input_date; //´ñ±ÛÀÔ·Â³¯Â¥
	private String c_content; //´ñ±ÛÀÔ·Â³¯Â¥
	private int rp_num; //´ë´ñ±Û¹øÈ£
	private String r_user_id; //´ñ±Û¾ÆÀÌµð
	private String r_nick_name; //´ñ±Û´Ð³×ÀÓ
	private String r_profile; //´ñ±ÛÀÌ¹ÌÁö
	private String r_input_date; //´ñ±ÛÀÔ·Â³¯Â¥
	private String r_content; //´ñ±ÛÀÔ·Â³¯Â¥
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	public int getCom_num() {
		return com_num;
	}
	public void setCom_num(int com_num) {
		this.com_num = com_num;
	}
	public String getC_user_id() {
		return c_user_id;
	}
	public void setC_user_id(String c_user_id) {
		this.c_user_id = c_user_id;
	}
	public String getC_nick_name() {
		return c_nick_name;
	}
	public void setC_nick_name(String c_nick_name) {
		this.c_nick_name = c_nick_name;
	}
	public String getC_profile() {
		return c_profile;
	}
	public void setC_profile(String c_profile) {
		this.c_profile = c_profile;
	}
	public String getC_input_date() {
		return c_input_date;
	}
	public void setC_input_date(String c_input_date) {
		this.c_input_date = c_input_date;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public int getRp_num() {
		return rp_num;
	}
	public void setRp_num(int rp_num) {
		this.rp_num = rp_num;
	}
	public String getR_user_id() {
		return r_user_id;
	}
	public void setR_user_id(String r_user_id) {
		this.r_user_id = r_user_id;
	}
	public String getR_nick_name() {
		return r_nick_name;
	}
	public void setR_nick_name(String r_nick_name) {
		this.r_nick_name = r_nick_name;
	}
	public String getR_profile() {
		return r_profile;
	}
	public void setR_profile(String r_profile) {
		this.r_profile = r_profile;
	}
	public String getR_input_date() {
		return r_input_date;
	}
	public void setR_input_date(String r_input_date) {
		this.r_input_date = r_input_date;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	@Override
	public String toString() {
		return "AllDomain [rv_num=" + rv_num + ", com_num=" + com_num + ", c_user_id=" + c_user_id + ", c_nick_name="
				+ c_nick_name + ", c_profile=" + c_profile + ", c_input_date=" + c_input_date + ", c_content="
				+ c_content + ", rp_num=" + rp_num + ", r_user_id=" + r_user_id + ", r_nick_name=" + r_nick_name
				+ ", r_profile=" + r_profile + ", r_input_date=" + r_input_date + ", r_content=" + r_content + "]";
	}
	
	
}//AllDomain
