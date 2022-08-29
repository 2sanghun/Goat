package org.goat.service;

import java.util.ArrayList;

import org.goat.mapper.BoardMapper;
import org.goat.model.BoardVO;
import org.goat.model.CriteriaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardMapper bm;
	// 글쓰기 설계도를 보고 구현하기
	public void boardwrite(BoardVO board) {
		bm.boardwrite(board);
	}

//	public ArrayList<BoardVO> list(){
//		return bm.list();
//	}

	
//	public BoardVO detail(BoardVO board){
//		return bm.detail(board);
//	}

//	public void modify(BoardVO board) {
//		bm.modify(board);
//	}
	
//	public void remove(BoardVO board) {
//		bm.delete(board);
//	}
	public ArrayList<BoardVO> search(CriteriaVO cri){
		return bm.search(cri);
	}
}