package org.goat.service;

import org.goat.model.MemberVO;

public interface MemberService {
	// 회원가입
	public void signup(MemberVO member);
	// id 중복확인
	public int idcheck(MemberVO member);
	// 로그인
	public MemberVO login(MemberVO member);
}