package org.goat.model;
 
// pageNum(페이지 번호)와 amount(한페이지당 게시물 갯수) 값을 전달하는 model
public class CriteriaVO {
	private int pageNum; // 페이지 번호
	private int amount; // 한 페이지당 게시물 갯수
	private String id;
	private String keyword;
	private String type;
	private String period;	// 검색 조건에 기간
	private String category;	// total에 반영하기 위해 category 필요
	private String orderby;		// 최신순, 추천순, 조회순으로 정렬하기 위해 orderBY 필요
	
	// 쪽지 페이징 처리를 위해 만든다 나중에 안 될때 이거 지워야함
	private String recv_id;		// 쪽지 받은 아이디
	// 쪽지 페이징 처리를 위해 만든다 나중에 안 될때 이거 지워야함
	private String send_id;		// 쪽지 주는 아이디
	// 쪽지 페이징 처리를 위해 만든다 나중에 안 될때 이거 지워야함
	private boolean new_msg;	// 새로온 쪽지 체크
	// 쪽지 페이징 처리를 위해 만든다 나중에 안 될때 이거 지워야함
	private boolean recv_chk;	// 받은 쪽지 삭제 체크
	// 쪽지 페이징 처리를 위해 만든다 나중에 안 될때 이거 지워야함
	private boolean send_chk;	// 보낸 쪽지 삭제 체크
	
	// 생성자
	public CriteriaVO() {
		this(1, 10);
	}

	public CriteriaVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
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

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
		

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getOrderby() {
		return orderby;
	}

	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}

	
	public String getRecv_id() {
		return recv_id;
	}

	public void setRecv_id(String recv_id) {
		this.recv_id = recv_id;
	}

	public String getSend_id() {
		return send_id;
	}

	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}

	public boolean isNew_msg() {
		return new_msg;
	}

	public void setNew_msg(boolean new_msg) {
		this.new_msg = new_msg;
	}

	public boolean isRecv_chk() {
		return recv_chk;
	}

	public void setRecv_chk(boolean recv_chk) {
		this.recv_chk = recv_chk;
	}

	public boolean isSend_chk() {
		return send_chk;
	}

	public void setSend_chk(boolean send_chk) {
		this.send_chk = send_chk;
	}

	@Override
	public String toString() {
		return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + ", id=" + id + ", keyword=" + keyword
				+ ", type=" + type + ", period=" + period + ", category=" + category + ", orderby=" + orderby
				+ ", recv_id=" + recv_id + ", send_id=" + send_id + ", new_msg=" + new_msg + ", recv_chk=" + recv_chk
				+ ", send_chk=" + send_chk + "]";
	}

}