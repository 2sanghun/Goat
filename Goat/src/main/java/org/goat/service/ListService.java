package org.goat.service;
 
import java.util.ArrayList;

import org.goat.model.BoardVO;

public interface ListService {
	// 전체 글 목록 리스트 설계
	public ArrayList<BoardVO> list();
	// 관광 글 목록 리스트 설계
	public ArrayList<BoardVO> sitelist();
	// 숙소 글 목록 리스트 설계
	public ArrayList<BoardVO> houselist();
	// 음식 글 목록 리스트 설계
	public ArrayList<BoardVO> foodlist();
	// 교통 글 목록 리스트 설계
	public ArrayList<BoardVO> translist();
	// 투어 글 목록 리스트 설계
	public ArrayList<BoardVO> tourlist();
	

}
