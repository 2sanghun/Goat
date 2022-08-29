package org.goat.controller;

import org.goat.model.BoardVO;
import org.goat.model.CriteriaVO;
import org.goat.model.MemberVO;
import org.goat.model.RepleVO;
import org.goat.model.pageVO;
import org.goat.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {

	@Autowired
	ManagerService ms;

    // 멤버  목록 리스트 설계
	@RequestMapping(value = "manager/manager", method = RequestMethod.GET)
	// 게시판 목록 리스트
	public String list (Model model, CriteriaVO cri, Model totalmem) {
		// manager.jsp 실행 할 때 select 된 결과를 가져와라
		model.addAttribute("list", ms.list(cri));
		totalmem.addAttribute("total", ms.totalmem());

		// list.jsp 실행 할 때 pageVO에 저장되어 있는 데이터를 가져와라.
		//							 생성자 호출(매개변수가 없는 생성자)
		// board테이블(게시판테이블)에 전체 건수(select해서)를 아래에 190대신에 대입
		int total=ms.totalmem();
		// model.addAttribute("paging", new pageVO(cri, 190));
		model.addAttribute("paging", new pageVO(cri, total));
		return "manager/manager";
	}
/*
	// 멤버 리스트에서 아이디 검색
	@RequestMapping(value = "/manager/memsearch", method = RequestMethod.GET)
    public String search(MemberVO member, Model model, Model total) {
		model.addAttribute("search", ms.memsearch(member));
		total.addAttribute("total", ms.totalmem());

		return "manager/manager";
	}
*/
	// 멤버 상세 페이지 설계
	@RequestMapping(value = "/manager/memDetail", method = RequestMethod.GET)
	public String memDetail(MemberVO member, Model model) {
		model.addAttribute("detail", ms.memdetail(member));
		return "/manager/memDetail";
	}

	// 멤버 삭제 설계
	@RequestMapping(value = "/manager/remove", method = RequestMethod.GET)
	public String remove(MemberVO remove) {
		ms.remove(remove);
		// manager/manager.jsp 에서 삭제된 결과를 확인하기 위한 화면이동
		return "redirect:/manager/manager";
	}

	// 작성 글 리스트
	@RequestMapping(value = "/manager/managerWriteList", method = RequestMethod.GET)
	public void managerWriteList(BoardVO write, Model model) {
		model.addAttribute("WList", ms.WriteList(write));
	}

	// 글 삭제
	@RequestMapping(value = "/manager/writeremove", method = RequestMethod.GET)
	public String bremove(BoardVO bremove) {
		ms.bremove(bremove);
		// manager/manager.jsp 에서 삭제된 결과를 확인하기 위한 화면이동
		return "redirect:/manager/manager";
	}

	// 댓글 리스트
	@RequestMapping(value = "/manager/managerRepleList", method = RequestMethod.GET)
	public void managerRepleList(RepleVO write, Model model, Model board) {
		model.addAttribute("RList", ms.RepleList(write));
		board.addAttribute("WList", ms.WriteList(null));
	}
	
	// 댓글 삭제
	@RequestMapping(value = "/manager/repleremove", method = RequestMethod.GET)
	public String repleremove(RepleVO remove) {
		ms.repleremove(remove);
		// manager/manager.jsp 에서 삭제된 결과를 확인하기 위한 화면이동
		return "redirect:/manager/manager";
	}

	/*
	 * 글 수정 설계
	 * 
	 * @RequestMapping(value = "/manager/modify", method = RequestMethod.POST)
	 * public void modify(BoardVO boadrd) { bs.modify(board) boarddetail.jsp에서 수정된
	 * 결과를 확인하기 위한 화면이동
	 * 
	 * }
	 */

}