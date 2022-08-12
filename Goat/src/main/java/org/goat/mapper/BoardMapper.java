package org.goat.mapper;

import java.util.ArrayList;

import org.goat.model.BoardVO;

public interface BoardMapper {
	// 글쓰기 설계
	public void boardwrite(BoardVO board);
	
	// 글 목록
//	public ArrayList<BoardVO> list();
		
	// 목록리스트에서 제목을 클릭한 후 상세내용을 조회하는 DB 작업 설계
//	public BoardVO detail(BoardVO board);

	// 상세내용에 해당되는 내용을 수정하는 DB작업 설계
//	public void modify(BoardVO board);

	// 글 삭제
//	public void remove(BoardVO board);

	// 검색한 board 가져오기
	public ArrayList<BoardVO> search(String search);
}