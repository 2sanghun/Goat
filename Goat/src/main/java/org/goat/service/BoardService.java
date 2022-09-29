package org.goat.service;

import java.util.ArrayList;

import org.goat.model.AttachFileVO;
import org.goat.model.BoardVO;
import org.goat.model.CriteriaVO;

public interface BoardService {
	// 글쓰기 설계
	public void boardwrite(BoardVO board);
	
	// public ArrayList<AttachFileVO> attachlist(int bno);

	// 글 목록 리스트 설계
	// public ArrayList<BoardVO> list();

	// 글 상세 페이지 설계
	// public BoardVO detail(BoardVO board);

	// 글 수정 설계
	// pbulic void modify(BoardVO board);

	// 글 삭제 설계
	// public void remove(BoardVO board);
	
	// 글 검색
	public ArrayList<BoardVO> search(CriteriaVO cri);
	
	// board테이블 전체 건수 설계
	public int total(CriteriaVO cri);
}