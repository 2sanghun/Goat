package org.goat.controller;

import org.goat.model.BoardVO;
import org.goat.service.DetailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class DetailController {
	
	@Autowired
	DetailService ds;
	
	@RequestMapping(value = "/detail/detail", method = RequestMethod.GET)
	public String detail(BoardVO board, Model model) {
		model.addAttribute("detail", ds.detail(board));
		return "detail/detail";
	}
	@RequestMapping(value = "/detail/modify", method = RequestMethod.POST)
	public String modify(BoardVO board, RedirectAttributes rttr) {
		ds.modify(board);
		
		rttr.addAttribute("bno", board.getBno());
		
		return "redirect:detail/detail";
	}
	
	@RequestMapping(value = "/detail/remove", method = RequestMethod.POST)
	public String remove(BoardVO board) {
		ds.remove(board);
		return "redirect:list/list";
	}
}