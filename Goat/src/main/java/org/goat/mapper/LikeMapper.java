package org.goat.mapper;

import org.goat.model.LikeVO;

public interface LikeMapper {
	// 좋아요 상태를 위한 DB작업 구현
	// return 타입이 int, 1이면 좋아요 상태
	//				  , 0이면 좋아요가 아닌 상태
	public int checkLike(int bno, String id);
	
	// 좋아요 등록을 위한 설계
	public int likeUp(LikeVO like);
	
	// 좋아요 취소를 위한 설계
	public int likeDown(LikeVO like);
}
