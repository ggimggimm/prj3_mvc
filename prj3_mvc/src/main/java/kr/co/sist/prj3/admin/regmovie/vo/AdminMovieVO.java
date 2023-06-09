package kr.co.sist.prj3.admin.regmovie.vo;

/**
 * 영화등록 영화정보VO
 * @author user
 */
public class AdminMovieVO {
	
	private int m_num; 
	private String poster,m_title,eng_title,genre,run_time,rank,country,summary,
					origin,script,produce,ration,imports,release_date;
	
	public AdminMovieVO() {
		super();
	}

	public AdminMovieVO(int m_num, String poster, String m_title, String eng_title, String genre, String run_time,
			String rank, String country, String summary, String origin, String script, String produce, String ration,
			String imports, String release_date) {
		super();
		this.m_num = m_num;
		this.poster = poster;
		this.m_title = m_title;
		this.eng_title = eng_title;
		this.genre = genre;
		this.run_time = run_time;
		this.rank = rank;
		this.country = country;
		this.summary = summary;
		this.origin = origin;
		this.script = script;
		this.produce = produce;
		this.ration = ration;
		this.imports = imports;
		this.release_date = release_date;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	public String getEng_title() {
		return eng_title;
	}

	public void setEng_title(String eng_title) {
		this.eng_title = eng_title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getRun_time() {
		return run_time;
	}

	public void setRun_time(String run_time) {
		this.run_time = run_time;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

	public String getProduce() {
		return produce;
	}

	public void setProduce(String produce) {
		this.produce = produce;
	}

	public String getRation() {
		return ration;
	}

	public void setRation(String ration) {
		this.ration = ration;
	}

	public String getImports() {
		return imports;
	}

	public void setImports(String imports) {
		this.imports = imports;
	}

	public String getRelease_date() {
		return release_date;
	}

	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}

	@Override
	public String toString() {
		return "AdminMovieVO [m_num=" + m_num + ", poster=" + poster + ", m_title=" + m_title + ", eng_title="
				+ eng_title + ", genre=" + genre + ", run_time=" + run_time + ", rank=" + rank + ", country=" + country
				+ ", summary=" + summary + ", origin=" + origin + ", script=" + script + ", produce=" + produce
				+ ", ration=" + ration + ", imports=" + imports + ", release_date=" + release_date + "]";
	}
	
	
	
	

}//class
