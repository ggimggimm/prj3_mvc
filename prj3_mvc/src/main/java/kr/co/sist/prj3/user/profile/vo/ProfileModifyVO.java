package kr.co.sist.prj3.user.profile.vo;

/**
 * 프로필 수정<br>
 * 닉네임, 자기소개, 프로필이미지명
 * @author user
 *
 */
public class ProfileModifyVO {

	private String user_id, nick_name, profile_msg, profile;

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

	public String getProfile_msg() {
		return profile_msg;
	}

	public void setProfile_msg(String profile_msg) {
		this.profile_msg = profile_msg;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "ProfileModifyVO [user_id=" + user_id + ", nick_name=" + nick_name + ", profile_msg=" + profile_msg
				+ ", profile=" + profile + "]";
	}

	
	
}//class
