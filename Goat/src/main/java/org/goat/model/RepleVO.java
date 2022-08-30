package org.goat.model;

public class RepleVO {
	private String id;
	
    private int rno;
	
	private String content;
	
	private String repledate;
	
	private int bno;
	
	private String nick;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}



	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
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

	
	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	@Override
	public String toString() {
		return "RepleVO [id=" + id + ", rno=" + rno + ", content=" + content + ", repledate=" + repledate + ", bno="
				+ bno + ", nick=" + nick + "]";
	}
	
}
