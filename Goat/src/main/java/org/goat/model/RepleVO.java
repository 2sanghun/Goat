package org.goat.model;
 
public class RepleVO {
	private String id;
	
    private int rno;
	
	private String content;
	
	private String repledate;
	
	private int bno;
	
	private String nick;
	
	private int pageNum; // 댓글 페이지 번호 
	private int amount;  // 한 댓글 페이지당 게시물 개수 
	
	
    // 생성자를 이용해서 초기화 
	public RepleVO() {
		this(1,10);
	}
	
	public RepleVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		// TODO Auto-generated constructor stub
	}

	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


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
				+ bno + ", nick=" + nick + ", pageNum=" + pageNum + ", amount=" + amount + "]";
	}
	
}
