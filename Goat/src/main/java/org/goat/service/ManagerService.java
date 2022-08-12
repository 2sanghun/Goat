package org.goat.service;

import java.util.ArrayList;

import org.goat.model.BoardVO;
import org.goat.model.MemberVO;
import org.goat.model.RepleVO;

public interface ManagerService {

	// 멤버 생성 설계
	// 멤버 목록 리스트 설계
	public ArrayList<MemberVO> memberlist();

	// 멤버 리스트에서 전체 회원수 조회
	public int totalmem();
	
	// 멤버 상세 페이지 설계
	public MemberVO memdetail(MemberVO member);

	// 멤버 삭제 설계
	public void remove(MemberVO remove);

	// 작성 글 리스트
	public ArrayList<BoardVO> WriteList(BoardVO write);

	// 글 삭제
	public void bremove(BoardVO bremove);

	// 댓글 리스트
	public ArrayList<RepleVO> RepleList(RepleVO write);

	// 댓글 삭제

	// 글 수정 설계
	// public void modify(BoardVO board);

}