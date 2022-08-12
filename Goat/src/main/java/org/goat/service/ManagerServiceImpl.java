package org.goat.service;

import java.util.ArrayList;

import org.goat.mapper.ManagerMapper;
import org.goat.model.BoardVO;
import org.goat.model.MemberVO;
import org.goat.model.RepleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerMapper mm;

	public ArrayList<MemberVO> memberlist() {
		// ManagerMapper의 memberlist 메서드를 호출
		// 메서드의 매개변수를 통해 MemberVO 값을
		// ManagerMapper의 memberlsit 메서드로 전달
		return mm.memberlist();
	}

	// MemberService에서 설계되어진 detail 추상메서드를 구현
	public MemberVO memdetail(MemberVO member) {

		return mm.memdetail(member);
	}

	/*
	 * 글 수정 public void modify(BoardVO board) { mm.modify(board);
	 * 
	 * }
	 */

	// 멤버 삭제
	public void remove(MemberVO remove) {
		mm.remove(remove);
	}

	// 멤버 삭제
	public void bremove(BoardVO bremove) {
		mm.bremove(bremove);
	}

	// 글 삭제

	// 작성 글 리스트
	public ArrayList<BoardVO> WriteList(BoardVO write) {
		return mm.WriteList(write);
	}

	// 댓글 글 리스트
	public ArrayList<RepleVO> RepleList() {
		return mm.RepleList();
	}

}