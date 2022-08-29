package org.goat.service;

import java.util.ArrayList;

import org.goat.mapper.ManagerMapper;
import org.goat.model.BoardVO;
import org.goat.model.CriteriaVO;
import org.goat.model.MemberVO;
import org.goat.model.RepleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerMapper mm;

	// BoardService에서 설계되어진 list추상메서드를 구현
	public ArrayList<MemberVO> list(CriteriaVO cri) {
		return mm.list(cri);
	}
	
	// 멤버 리스트에서 전체 회원수 조회
	public int totalmem(){
		return mm.totalmem();	
	}
	
/*	// 멤버 리스트에서 아이디 검색
	public MemberVO memsearch(MemberVO member) {
		return mm.memsearch(member);
	}
*/

    // 멤버 상세 페이지 설계
	public MemberVO memdetail(MemberVO member) {

		return mm.memdetail(member);
	}

	// 멤버 삭제
	public void remove(MemberVO remove) {
		mm.remove(remove);
	}

	// 작성 글 리스트
	public ArrayList<BoardVO> WriteList(BoardVO write) {
		return mm.WriteList(write);
	}

	// 글 삭제
	public void bremove(BoardVO bremove) {
		mm.bremove(bremove);
	}

	// 댓글 리스트
	public ArrayList<RepleVO> RepleList(RepleVO write) {
		return mm.RepleList(write);
	}
	// 댓글 삭제
	public void repleremove(RepleVO remove) {
		mm.repleremove(remove);
	}
	/*
	 * 글 수정 public void modify(BoardVO board) { mm.modify(board); }
	 */

}