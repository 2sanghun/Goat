package org.goat.service;


import java.util.ArrayList;


import org.goat.mapper.MypageMapper;
import org.goat.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageServicelmpl implements MypageService {


	@Autowired
	MypageMapper mm; 
	
	public void mypagemypage(MemberVO member) {
		System.out.println("service="+member);
		mm.mypagemypage(member);
	}
	public ArrayList<MemberVO> my() {
		return mm.my();
	}
	public MemberVO detail(MemberVO member) {
	  return mm.detail(member);
	}
	public void modify(MemberVO member) {
		mm.modify(member);
	}
	
	public void remove(MemberVO member) {
		mm.remove(member);
	}

	public int removechk(MemberVO member){
		return mm.removechk(member);
	}
}
