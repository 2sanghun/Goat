package org.goat.mapper;

import java.util.ArrayList;

import org.goat.model.MemberVO;

public interface MypageMapper {
     //글쓰기에 해당되는 DB작업 설계
	public void mypagemypage(MemberVO member);
	//게시글 목록 리스트에 해당되는 DB작업 설계
	public ArrayList<MemberVO> my();
	//목록리스트에서 제목을 클릭한 후 상세내용을 조회하는 DB작업 설계
	public MemberVO detail(MemberVO member);
	//상세 내용에 해당되는 내용을 수정하는 DB작업
	public void modify(MemberVO member);
	
	public void remove(MemberVO member);
}

	
	
