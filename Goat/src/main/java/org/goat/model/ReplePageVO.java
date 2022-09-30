package org.goat.model;
 
import java.util.ArrayList;

public class ReplePageVO {
     
	private int replecnt;
	
	private ArrayList<RepleVO> list;
	
	public ReplePageVO(int replecnt, ArrayList<RepleVO> list) {
		this.replecnt=replecnt;
		this.list=list;
	}

	public int getReplecnt() {
		return replecnt;
	}

	public void setReplecnt(int replecnt) {
		this.replecnt = replecnt;
	}

	public ArrayList<RepleVO> getList() {
		return list;
	}

	public void setList(ArrayList<RepleVO> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "ReplePageVO [replecnt=" + replecnt + ", list=" + list + "]";
	}
	
}