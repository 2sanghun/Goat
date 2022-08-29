package org.goat.model;

public class pageVO {
	
	//시작번호
	private int startpage;
	//끝번호
	private int endpage;
	//이전버튼
	private boolean prev;
	//다음버튼
	private boolean next;
	//CriteriaVO 포함
	private CriteriaVO cri;
	//board 테이블의 전체건수를 저장
	private int total;
	
	public pageVO(CriteriaVO cri,int total ) {
		this.cri = cri;
		this.total = total;
		
	
		//끝번호 식 (1(현재번호)/10 =0.1(올림) => 1 => 1*10 => 10
		//끝번호 식 (11(현재번호)/10 =1.1(올림) => 1 => 2*10 => 20
		//끝번호 식: 현재 페이지/10(올림) * 10
		this.endpage=(int)Math.ceil(cri.getPageNum()/10.0)*10;
		//시작번호, 끝번호, 이전버튼, 다음버튼 계산
				//시작번호 식: 끝번호 -9
		this.startpage = this.endpage -9;
		
		//제일 마지막 페이지 번호는 전체건수를 고려해야한다
				//제일 마지막 끝번호 식: 전체건수(올림)/페이지당 게시물 갯수
				//                             123*1.0=123.0 / 10
				//                                     12.3(올림) =>13
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		
		// 13(realEnd) < 20(endpage) 면
        //realEnd가 적용되게 함.
		if(realEnd < this.endpage) {
			this.endpage=realEnd;
		}
		//startpage가 1 보다 크면 이전버튼 활성화
		this.prev = this.startpage > 1;
		
		// endpage가 realpageEnd 보다 작으면
		this.next = this.endpage < realEnd;
	}

	public int getStartpage() {
		return startpage;
	}

	public void setStartpage(int startpage) {
		this.startpage = startpage;
	}

	public int getEndpage() {
		return endpage;
	}

	public void setEndpage(int endpage) {
		this.endpage = endpage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public CriteriaVO getCri() {
		return cri;
	}

	public void setCri(CriteriaVO cri) {
		this.cri = cri;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "pageVO [startpage=" + startpage + ", endpage=" + endpage + ", prev=" + prev + ", next=" + next
				+ ", cri=" + cri + ", total=" + total + "]";
	}
      
	
	
}
