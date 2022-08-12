package org.goat.mapper;

import java.util.ArrayList;

import org.goat.model.BoardVO;
import org.goat.model.MemberVO;
import org.goat.model.RepleVO;

public interface ManagerMapper {
	// 멤버리스트에 해당되는 DB 작업 설계
	public ArrayList<MemberVO> memberlist();

	// 멤버리스트에서 상세버튼 클릭한 후 상세내용 조회하는 DB 작업 설계
	public MemberVO memdetail(MemberVO member);

	// 멤버리스트에서 전체 회원수 조회

	/*
	 * 글 수정 DB public void modify(BoardVO board);
	 */

	public void remove(MemberVO remove);

	public void bremove(BoardVO bremove);

	public ArrayList<BoardVO> WriteList(BoardVO write);

	public ArrayList<RepleVO> RepleList();

}
