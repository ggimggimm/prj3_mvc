package kr.co.sist.prj3.user.total_info.domain;

public class ProduceDomain {

	private int m_num;
	private String origin, script, produce, ration, imports;
	
	public ProduceDomain() {
		super();
	}

	public ProduceDomain(int m_num, String origin, String script, String produce, String ration, String imports) {
		super();
		this.m_num = m_num;
		this.origin = origin;
		this.script = script;
		this.produce = produce;
		this.ration = ration;
		this.imports = imports;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
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

	@Override
	public String toString() {
		return "ProduceDomain [m_num=" + m_num + ", origin=" + origin + ", script=" + script + ", produce=" + produce
				+ ", ration=" + ration + ", imports=" + imports + "]";
	}

	
	
	
}
