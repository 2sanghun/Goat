package org.goat.model;
// pageNum(페이지 번호)와 amount(한페이지당 게시물 갯수) 값을 전달하는 model
public class CriteriaVO {
	 private int pageNum;   //페이지 번호
	 private int amount;    // 한 페이지당 게시물 갯수
	 private int id;
	 
	 //생성자
	 public CriteriaVO() {
		 this(1,10,20);
	 }
	 public CriteriaVO(int pageNum, int amount, int id) {
		 this.pageNum = pageNum;
		 this.amount = amount;
		 this.id=id;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + ", id=" + id + "]";
	}
	
	}

	 
	 

