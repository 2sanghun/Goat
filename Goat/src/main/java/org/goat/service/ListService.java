package org.goat.service;
   
import java.util.ArrayList;

import org.goat.model.BoardVO;
import org.goat.model.CriteriaVO;

public interface ListService {
	// 전체 글 목록 리스트 설계
	public ArrayList<BoardVO> list(CriteriaVO cri);
	
	// 관광 글 목록 리스트 설계
	public ArrayList<BoardVO> sitelist(CriteriaVO cri);
	
	// 숙소 글 목록 리스트 설계
	public ArrayList<BoardVO> houselist();
	
	// 음식 글 목록 리스트 설계
	public ArrayList<BoardVO> foodlist();
	
	// 교통 글 목록 리스트 설계
	public ArrayList<BoardVO> translist();
	
	// 투어 글 목록 리스트 설계
	public ArrayList<BoardVO> tourlist();
	
	// 매니저 글 목록 리스트 설계
	public ArrayList<BoardVO> manager();
	
	// board 테이블 전체건수 설계
	public int total(CriteriaVO cri);
	
}
