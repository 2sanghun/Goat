package org.goat.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.goat.model.RepleVO;


//댓글 관련 Mapper
public interface RepleMapper {
	// 댓글 쓰기를 위한 설계
	// return 타입이 int면 1이면 insert성공 0이면 insert 실패  
	public int writeReple(RepleVO reple);
    
	// 댓글 목록 리스트를 위한 설계 
	// public ArrayList<RepleVO> list(RepleVO reple);
	
	public ArrayList<RepleVO> list(@Param("reple") RepleVO reple,@Param("bno") int bno);

	public int rplcnt(int bno);
	
	// 댓글 삭제를 위한 구현
	public int remove(RepleVO reple);
	
	// 댓글 수정을 위한 구현
    public int modify(RepleVO reple);
}