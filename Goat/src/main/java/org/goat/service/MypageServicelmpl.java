package org.goat.service;


import java.util.ArrayList;


import org.goat.mapper.MypageMapper;
import org.goat.model.BoardVO;
import org.goat.model.CriteriaVO;
import org.goat.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MypageServicelmpl implements MypageService {


	@Autowired
	MypageMapper mm; 
	
	public void mypagemypage(MemberVO member) {
		System.out.println("service="+member);
		mm.mypagemypage(member);
	}
	public ArrayList<MemberVO> my(CriteriaVO cri) {    //이거 추가된거 보기
		return mm.my();
	}
	@Transactional
	public MemberVO detail(MemberVO member) {
		//상세페이지 조회 할때
		//조회수 + 1 update
		//mm.cntup(member);
	  return mm.detail(member);
	}
	public void modify(MemberVO member) {
		mm.modify(member);
		mm.modify_nick(member);
	}
	
	public void remove(MemberVO member) {
		mm.remove(member);
	}

	public int removechk(MemberVO member){
		return mm.removechk(member);
	}
	public ArrayList<BoardVO> myboard(CriteriaVO cri) {
		System.out.println(cri);
		return mm.myboard(cri);
	}
    
	public int total(CriteriaVO cri) {
		System.out.println(cri);
		return mm.total(cri);
	}
}
