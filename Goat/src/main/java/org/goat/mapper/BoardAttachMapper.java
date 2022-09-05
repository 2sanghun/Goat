package org.goat.mapper;

import java.util.ArrayList;

import org.goat.model.AttachFileVO;

public interface BoardAttachMapper {
	public void insert(AttachFileVO attach);
	
	// 해당게시물의 첨부파일 조회
	public ArrayList<AttachFileVO> attachlist(int bno);
}
