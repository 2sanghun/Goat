package org.goat.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.goat.model.BoardVO;
import org.goat.model.MemberVO;
import org.goat.service.BoardService;
import org.goat.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	
	@Autowired
	BoardService bs;
	
	@Autowired
	MemberService ms;
	
	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	 public void main() {}
	
	@RequestMapping(value = "/main/main", method = RequestMethod.POST)
	public String search(String search,Model model) {
		model.addAttribute("search",bs.search(search));
		return "/main/main";
	}
	
	// main폴더 안에 있는 write.jsp를 실행할 때
	@RequestMapping(value = "/main/write", method = RequestMethod.GET)
	public void write(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
	}
	
	// 글쓰기에서 카테고리, 제목, 내용을 DB로 보내기 위한 back작업을 위한...
	@RequestMapping(value = "/main/write", method = RequestMethod.POST)
	public String writePost(BoardVO board,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String nick = (String) session.getAttribute("nick");
		board.setId(id);
		board.setNick(nick);
		System.out.println(id);
		System.out.println(nick);
		bs.boardwrite(board);
		System.out.println(board);
		return "/list/list";
	}

	@RequestMapping(value = "/header/login", method = RequestMethod.GET)
	public void login() {
	}
	
	@RequestMapping(value = "/header/login", method = RequestMethod.POST)
	public String login(MemberVO member, HttpSession session,HttpServletResponse response) throws IOException {
		MemberVO a = ms.login(member);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(a!=null) {
			String id = a.getId();
			String nick = a.getNick();
			System.out.println("session.set("+id+")");
			session.setAttribute("id",id);
			session.setAttribute("nick", nick);
		}else {
			out.println("<script>alert('아이디, 비밀번호를 확인해 주세요'); </script>");
			out.flush();
			return "/header/login";
		}
		out.println("<script>alert('로그인 되셨습니다.'); </script>");
		out.flush();
		return "/main/main";
	}
	
	@RequestMapping(value = "/header/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "/header/login";
	}
	
	@RequestMapping(value = "/header/signup", method = RequestMethod.GET)
	public void signup() {}
	
	
	@RequestMapping(value = "/header/idcheck", method = RequestMethod.POST)
	public ResponseEntity<Integer> idcheck(MemberVO member, HttpServletResponse response) throws IOException {
		System.out.println(member);
		int result = ms.idcheck(member);
		System.out.println(result);
		return new ResponseEntity<>(result,HttpStatus.OK);
	}

	@RequestMapping(value = "/header/signup", method = RequestMethod.POST)
	public String signuppost(MemberVO member, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(ms.idcheck(member)==1) {
			out.println("<script>alert('아이디가 중복됩니다.'); </script>");
			out.flush();
			return "/header/signup";
		}
		ms.signup(member);
		return "/header/login";
	}
}

	// 상세 게시글
// 	@RequestMapping(value = "/detail/deatil", method = RequestMethod.GET)
//  //	public String detail(int bno){
//	public String detail(BoardVO board, Model model) {
//	//	system.out.println(bno);
//		System.out.println(board);
//	//	bs.detail(bno);
//		model.addAttribute("detail",bs.detail(board));
//		return "/detail/detail"
//	}

	// 글 수정
//	@RequestMapping(value = "/detail/modify", method = RequestMethod.GET)
//	public String modify(BoardVO board) {
//		bs.modify(board);
//		// detail.jsp에 
//		return "/detail/detail";
//	} 
	// 글 삭제
//	@RequestMapping(value = "/detail/remove", method = RequestMethod.GET)
//	public String remove(BoardVO board) {
//		bs.remove(board);
//		return "/list/list";
//	} 