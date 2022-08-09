package org.goat.service;

import org.goat.mapper.MemberMapper;
import org.goat.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper mm;
	
	public void signup(MemberVO member) {
		mm.signup(member);
	}
}
