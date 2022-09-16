package org.goat.service;

import org.goat.model.LikeVO;

public interface LikeService {
	// 좋아요 체크를 위한 설계
	public int checkLike(int bno, String id);
	
	// 좋아요 등록을 위한 설계
	public int likeUp(LikeVO like);
	
	// 좋아요 취소를 위한 설계
	public int likeDown(LikeVO like);
}
