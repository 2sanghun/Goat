package org.goat.service;

import org.goat.mapper.DetailMapper;

import org.goat.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailServiceImpl implements DetailService {

	@Autowired
	DetailMapper dm;
	
	public BoardVO detail(BoardVO board) {
		dm.cntup(board);
		
		return dm.detail(board);	
	}
    public void modify(BoardVO board) {
    	dm.modify(board);
    }
	
    public void remove(BoardVO board) {
    	dm.remove(board);
    }
}