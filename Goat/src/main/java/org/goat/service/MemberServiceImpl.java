package org.goat.service;

import org.goat.mapper.MemberMapper;
import org.goat.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import defaultPackage.MailUtils;
import defaultPackage.TempKey;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper mm;
	
	@Autowired
	private JavaMailSender mailSender;

	public void signup(MemberVO member) {
		mm.signup(member);
	}
	
	public int idcheck(MemberVO member) {
		int result = mm.idcheck(member);
		return result;
	}
	public MemberVO login(MemberVO member) {
		return mm.login(member);
	}
	
	public String idsearch(MemberVO member) {
		return mm.idsearch(member);
	}
	
	public String pwsearch(MemberVO member) {
		return mm.pwsearch(member);
	}
	
	public int findPwCheck(MemberVO member) {
		return mm.findPwCheck(member);
	}
	public void findPw(MemberVO member) throws Exception {
		String memberKey = new TempKey().getKey(6,false);
//		String memberPw = BCrypt.hashpw(memberKey,BCrypt.gensalt());
		member.setPassword(memberKey);
		System.out.println(mailSender);
		mm.findPw(member);
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("[GOAT 커뮤니티 임시 비밀번호 입니다.]");
		sendMail.setText(
					"<h1>임시 비밀번호 발급</h1>"+
							"<br/>"+member.getId()+"님"+
							"<br/>비밀번호 찾기를 통한 임시 비밀번호 입니다."+
							"<br/>임시 비밀번호 :   <h2>"+memberKey+"</h2>"+
							"<br/>로그인 후 비밀번호 변경을 해주세요."+
							"<a href='http://localhost:8080/header/login"+
							">로그인 페이지</a>");
		sendMail.setFrom("lnwst21@daum.net", "GOAT");
		sendMail.setTo(member.getEmail());
		System.out.println("server error인가?");
		sendMail.send();
	}
	
	
}