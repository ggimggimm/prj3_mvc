package kr.co.sist.prj3.admin.admin_movie.vo;

public class DeleteGradeVO {
	private int n_num; 
	private String user_id, input_date;
	
	public int getN_num() {
		return n_num;
	}
	public void setN_num(int n_num) {
		this.n_num = n_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	@Override
	public String toString() {
		return "DeleteGradeVO [n_num=" + n_num + ", user_id=" + user_id + ", input_date=" + input_date + "]";
	}
	
	
	
	
}
