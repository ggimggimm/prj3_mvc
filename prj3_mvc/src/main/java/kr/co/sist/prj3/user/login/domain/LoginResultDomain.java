package kr.co.sist.prj3.user.login.domain;

public class LoginResultDomain {

	private String user_id, nick_name, birth_date, profile, name ;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "LoginResultDomain [user_id=" + user_id + ", nick_name=" + nick_name + ", birth_date=" + birth_date
				+ ", profile=" + profile + ", name=" + name + "]";
	}

	
	
	
	
}//class
