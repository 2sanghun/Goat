package org.goat.service;

import java.util.ArrayList;

import org.goat.model.BoardVO;
import org.goat.model.MemberVO;

public interface MypageService {
	
	public void mypagemypage(MemberVO member);

	public ArrayList<MemberVO> my();
	
	public MemberVO detail(MemberVO member);
	
	public void modify(MemberVO member);
	
	public void remove(MemberVO member);
	
	public int removechk(MemberVO member);
	
	public ArrayList<BoardVO> myboard(MemberVO member);
}
