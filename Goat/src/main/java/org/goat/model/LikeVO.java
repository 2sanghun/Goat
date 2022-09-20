package org.goat.model;

public class LikeVO {
	
	// 좋아요 번호(hno)
	private int hno;
	// 게시판 번호(bno)
	private int bno;
	// 아이디(id)
	private String id;
	
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "LikeVO [hno=" + hno + ", bno=" + bno + ", id=" + id + "]";
	}
	
}
