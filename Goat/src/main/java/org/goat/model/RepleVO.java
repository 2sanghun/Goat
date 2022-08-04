package org.goat.model;

public class RepleVO {
	private String id;
	
	private int reno;
	
	private String content;
	
	private String repledate;
	
	private int bno;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getReno() {
		return reno;
	}

	public void setReno(int reno) {
		this.reno = reno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRepledate() {
		return repledate;
	}

	public void setRepledate(String repledate) {
		this.repledate = repledate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	@Override
	public String toString() {
		return "RepleModel [id=" + id + ", reno=" + reno + ", content=" + content + ", repledate=" + repledate
				+ ", bno=" + bno + "]";
	}
	
}
