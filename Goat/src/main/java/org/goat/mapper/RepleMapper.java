package org.goat.mapper;

import java.util.ArrayList;

import org.goat.model.RepleVO;


//댓글 관련 Mapper
public interface RepleMapper {
	// 댓글 쓰기를 위한 구현 
	// return 타입이 int면 1이면 insert성공 0이면 insert 실패  
	public int writeReple(RepleVO reple);
    
	// 댓글 목록 리스트를 위한 구현 
	public ArrayList<RepleVO> list(int bno);
	
	// 댓글 삭제를 위한 구현
	public int remove(RepleVO reple);
	
	// 댓글 수정을 위한 구현
    public int modify(RepleVO reple);
		
	
}