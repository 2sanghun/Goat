package org.goat.mapper;

import java.util.ArrayList;

import org.goat.model.AttachFileVO;

public interface BoardAttachMapper {
	public void insert(AttachFileVO attach);
	
	public ArrayList<AttachFileVO> attachlist(int bno);
}
