package org.goat.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.goat.model.CriteriaVO;
import org.goat.model.MemberVO;
import org.goat.model.pageVO;
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
	//내가 쓴글 불러오기
	@RequestMapping(value = "/memModify", method = RequestMethod.GET)
	public String memModify(MemberVO member, HttpServletRequest request,Model model,CriteriaVO cri) {     
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		cri.setId(id);
		System.out.println(id);
		model.addAttribute("myboard",mm.myboard(cri));
		int total=mm.total(cri);
		System.out.println("total="+total);
		model.addAttribute("paging",new pageVO(cri,total));
		return "/mypage/memModify";
	}
	
	
	//로그인 해서 마이페이지에 정보 보이게 하는것
	@RequestMapping(value = "/mypage/mypage", method = RequestMethod.GET)
	public void mypage(MemberVO member, HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		member.setId(id);
		System.out.println(id);
		model.addAttribute("member",mm.detail(member));
	}
	
	//수정
	@RequestMapping(value = "/mypage/mypage", method = RequestMethod.POST)
	public String modify(MemberVO member,RedirectAttributes rttr ) {
		System.out.println("hi");
		mm.modify(member);
		rttr.addAttribute("id",member.getId());
		return "mypage/Withdrawal";
	}
	
	//회원탈퇴
	@RequestMapping(value = "/mypage/favorite", method = RequestMethod.POST)
	public String remove(MemberVO member, HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		member.setId(id);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println(id);
		if(mm.removechk(member)==1) {
			mm.remove(member);
			session.invalidate();
			out.println("<script>alert('회원탈퇴 되었습니다.'); </script>");
			
		}else {
			out.println("<script>alert('비밀번호를 확인해 주세요.'); </script>");
			out.flush();
			return"mypage/favorite";
		}
		return"mypage/Withdrawal";
	}
	
	@RequestMapping(value = "/mypage/Withdrawal", method = RequestMethod.GET)
	public void Withdrawal() {
		
	}

	
}
