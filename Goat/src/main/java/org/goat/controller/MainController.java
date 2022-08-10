package org.goat.controller;
import javax.servlet.http.HttpSession;

import org.goat.model.BoardVO;
import org.goat.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@Autowired
	BoardService bs;
	
	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	 public void main() {
		
	}
	// main폴더 안에 있는 write.jsp를 실행할 때
	@RequestMapping(value = "/main/write", method = RequestMethod.GET)
	public void write() {
		
	}
	// 글쓰기에서 카테고리, 제목, 내용을 DB로 보내기 위한 back작업을 위한...
	@RequestMapping(value = "/main/write", method = RequestMethod.POST)
	public void writePost(BoardVO board) {
		bs.boardwrite(board);
<<<<<<< HEAD
		return "redirect:/list/list";
=======
>>>>>>> branch 'master' of https://github.com/2sanghun/Goat.git
	}
	
	@RequestMapping(value = "/header/login", method = RequestMethod.GET)
	public void login(HttpSession session) {
		
	}
	
	@RequestMapping(value = "/header/signup", method = RequestMethod.GET)
	public void signup() {
		
	}
}
<<<<<<< HEAD

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
//	public String modify(BoardVO board, RedirectAttribute rttr) {
//		bs.modify(board);
//		rttr.addAttribute("bno", board.getBno());
//		// detail.jsp에서 수정된 결과를 확인하기 위한 화면이동
//		return "redirect:/detail/detail";
//	}
=======
>>>>>>> branch 'master' of https://github.com/2sanghun/Goat.git
