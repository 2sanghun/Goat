package org.goat.service;

import java.util.ArrayList;

import org.goat.model.MemberVO;

public interface MemberService {

		// 멤버 생성 설계
		// 멤버 목록 리스트 설계
		public ArrayList<MemberVO> memberlist();
		
		// 멤버 상세 페이지 설계
		public MemberVO memdetail(MemberVO member);
		
		// 글 수정 설계
		// public void modify(BoardVO board);
		
		// 글 삭제 설계
		public void remove(MemberVO remove);

	}