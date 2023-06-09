package kr.co.sist.prj3.user.mypage.domain;

public class ProfileDomain {
	
	private String profile, name;

	public ProfileDomain() {
		super();
	}

	public ProfileDomain(String profile, String name) {
		super();
		this.profile = profile;
		this.name = name;
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
		return "ProfileDomain [profile=" + profile + ", name=" + name + "]";
	}
	
	

}//class
