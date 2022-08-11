package org.goat.controller;

import org.goat.model.MemberVO;
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

	@RequestMapping(value = "/manager/manager", method = RequestMethod.GET)
	public void manager(Model model) {
		model.addAttribute("list", ms.memberlist());
	}

	@RequestMapping(value = "/manager/memDetail", method = RequestMethod.GET)
	// public String memDetail(varchar id) {
	// bs.detail(id);
	public String memDetail(MemberVO member, Model model) {
		//System.out.println(member);
		model.addAttribute("detail", ms.memdetail(member));
		return "/manager/memDetail";
	}
	/* 글 수정 설계
	@RequestMapping(value = "/manager/modify", method = RequestMethod.POST)
	public void modify(BoardVO boadrd) {
	    bs.modify(board)
	    boarddetail.jsp에서 수정된 결과를 확인하기 위한 화면이동
	    
	}
    */
	
	@RequestMapping(value = "/manager/remove", method = RequestMethod.GET)
	public String remove(MemberVO remove) {
		ms.remove(remove);
		// manager/manager.jsp 에서 삭제된 결과를 확인하기 위한 화면이동
		return "redirect:/manager/manager";
	}
	
	@RequestMapping(value = "/manager/managerWriteList", method = RequestMethod.GET)
	public void managerWriteList(Model model) {
		model.addAttribute("WList", ms.WriteList());
		
	}
	
	@RequestMapping(value = "/manager/managerRepleList", method = RequestMethod.GET)
	public void managerRepleList(Model model) {
		model.addAttribute("RList", ms.RepleList());
		
	}



}