package org.goat.mapper;

import java.util.ArrayList;

import org.goat.model.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void signup(MemberVO member);
	// 회원가입 ID 중복확인
}
