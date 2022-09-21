package org.goat.mapper;
 
import org.goat.model.BoardVO;

public interface DetailMapper {

// 목록에서 제목을 클릭한 후 상세 내용을 조회하는 DB작업 설계 
	public BoardVO detail(BoardVO board);
// 목록에서 제목을 클릭한 후 상세 내용을 조회할 때 조회수도 같이 update하는 DB작업 설계
	public void cntup(BoardVO board);
	
// 상세내용에 해당되는 내용을 수정하는 DB작업 설계 
    public void modify(BoardVO board);	
// 상세내용에 해당되는 내용을 삭제하는 DB작업 설계
    public void remove(BoardVO board);
}