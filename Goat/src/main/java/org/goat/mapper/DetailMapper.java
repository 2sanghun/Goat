package org.goat.mapper;

import org.goat.model.BoardVO;

public interface DetailMapper {

// 목록에서 제목을 클릭한 후 상세 내용을 조회하는 DB작업 설계 
	public BoardVO detail(BoardVO board);
	
}
