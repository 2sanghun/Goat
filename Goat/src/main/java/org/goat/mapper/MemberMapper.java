package org.goat.mapper;

import org.goat.model.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void signup(MemberVO member);
	// 회원가입 ID 중복확인
	public int idcheck(MemberVO member);
	// 로그인
	public MemberVO login(MemberVO member);
	// 아이디 찾기
	public String idsearch(MemberVO member);
	// 비밀번호 찾기
	public String pwsearch(MemberVO member);
	
	// 메일 관련
	public void findPw(MemberVO member);
	public int findPwCheck(MemberVO member);
}