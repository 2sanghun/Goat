package org.goat.service;

import java.util.ArrayList;

import org.goat.mapper.ListMapper;
import org.goat.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ListServiceimpl implements ListService{
	@Autowired
	ListMapper lm;
	
	// ListService에서 설계되어 진 list 추상메서드를 구현
	public ArrayList<BoardVO> list(){
		return lm.list();
	}
	// ListService에서 설계되어 진 sitelist 추상메서드를 구현
	public ArrayList<BoardVO> sitelist(){
		return lm.sitelist();
	}
	// ListService에서 설계되어 진 houselist 추상메서드를 구현
	public ArrayList<BoardVO> houselist(){
		return lm.houselist();
	}
	// ListService에서 설계되어 진 foodlist 추상메서드를 구현
	public ArrayList<BoardVO> foodlist(){
		return lm.foodlist();
	}
	// ListService에서 설계되어 진 translist 추상메서드를 구현
	public ArrayList<BoardVO> translist(){
		return lm.translist();
	}
	// ListService에서 설계되어 진 tourlist 추상메서드를 구현
	public ArrayList<BoardVO> tourlist(){
		return lm.tourlist();
	}
	
	
}
