package org.goat.model;

public class BoardVO {
	private int bno;
	
	private String title;
	
	private String content;
	
	private String nick;
	
	private String regdate;
	
	private int cnt;
	
	private String id;
	
	private int good;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}
	@Override
	public String toString() {
		return "BoardModel [bno=" + bno + ", title=" + title + ", content=" + content + ", nick=" + nick + ", regdate="
				+ regdate + ", cnt=" + cnt + ", id=" + id + ", good=" + good + "]";
	}

}
