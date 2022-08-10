package org.goat.controller;
import org.goat.model.MemberVO;
import org.goat.service.MypageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mm; 
	
	@RequestMapping(value = "/mypage/favorite", method = RequestMethod.GET)
	public void favorite() {
		
	}
	@RequestMapping(value = "/mypage/memModify", method = RequestMethod.GET)
	public void memModify() {
		
	}
	
	@RequestMapping(value = "/mypage/mypage", method = RequestMethod.GET)
	public void mypage() {
		
	}
	
	@RequestMapping(value = "/mypage/mypage", method = RequestMethod.POST)
	public String mypagepost(MemberVO member) {
		
		mm.mypagemypage(member);
		return "redirect:/mypage/my";
	}
	
	@RequestMapping(value = "/mypage/my", method = RequestMethod.GET)
	public String my(Model model ) {
		model.addAttribute("my",mm.my());
		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/mypage/detail", method = RequestMethod.GET)
	public String detail(MemberVO member,Model model) {
		System.out.println(member);
		//mm.detail(id);
		model.addAttribute("detail",mm.detail(member));
		return "mypage/mypagedetail";
		
	}
	
	@RequestMapping(value = "member/modify", method = RequestMethod.POST)
	public String modify(MemberVO member , RedirectAttributes rttr) {
		mm.modify(member);
		rttr.addAttribute("id",member.getId());
		//memberdetail.jsp에서 수정된 결과를 확인하기 위한 화면이동
		return "redirect:/mypage/detail";
		
	}
	
	@RequestMapping(value = "member/remove", method = RequestMethod.POST)
	public String remove(MemberVO member) {
		//글삭제
		mm.remove(member);
		return"redirect:/mypage/mypage";
	}
	
	
	@RequestMapping(value = "/mypage/Withdrawal", method = RequestMethod.GET)
	public void Withdrawal() {
		
	}
}
