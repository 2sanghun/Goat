package org.goat.service;

import java.util.ArrayList;

import org.goat.model.BoardVO;
import org.goat.model.MemberVO;
import org.goat.model.RepleVO;

public interface ManagerService {

		// 멤버 생성 설계
		// 멤버 목록 리스트 설계
		public ArrayList<MemberVO> memberlist();
		
		// 멤버 상세 페이지 설계
		public MemberVO memdetail(MemberVO member);
		
		// 글 수정 설계
		// public void modify(BoardVO board);
		
		// 멤버 삭제 설계
		public void remove(MemberVO remove);
		
		// 작성 글 리스트
		public ArrayList<BoardVO> WriteList();
		
		// 댓글 글 리스트
		public ArrayList<RepleVO> RepleList();

	}