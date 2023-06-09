package kr.co.sist.prj3.admin.admin_movie.vo;

public class EditMovieVO {

	private String m_title, eng_title, poster, genre, run_time, rank, country, origin, script, produce, summary, ration, imports, release_date;
	private int m_num;

	public EditMovieVO() {
	}

	public EditMovieVO(String m_title, String eng_title, String poster, String genre, String run_time, String rank,
			String country, String origin, String script, String produce, String summary, String ration, String imports,
			String release_date, int m_num) {
		super();
		this.m_title = m_title;
		this.eng_title = eng_title;
		this.poster = poster;
		this.genre = genre;
		this.run_time = run_time;
		this.rank = rank;
		this.country = country;
		this.origin = origin;
		this.script = script;
		this.produce = produce;
		this.summary = summary;
		this.ration = ration;
		this.imports = imports;
		this.release_date = release_date;
		this.m_num = m_num;
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

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
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

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
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

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	@Override
	public String toString() {
		return "EditMovieVO [m_title=" + m_title + ", eng_title=" + eng_title + ", poster=" + poster + ", genre="
				+ genre + ", run_time=" + run_time + ", rank=" + rank + ", country=" + country + ", origin=" + origin
				+ ", script=" + script + ", produce=" + produce + ", summary=" + summary + ", ration=" + ration
				+ ", imports=" + imports + ", release_date=" + release_date + ", m_num=" + m_num + "]";
	}

	

}
