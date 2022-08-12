package org.goat.controller;

import org.goat.model.BoardVO;
import org.goat.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ListController {
	@Autowired
	ListService ls;
	
	@RequestMapping(value = "/list/list", method = RequestMethod.GET)
	public String list(Model model) {
		// list.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list());
		//      list 폴더 안에 있는 list.jsp 실행
		return "list/list";
		
	}
	@RequestMapping(value = "/list/foodlist", method = RequestMethod.GET)
	public String foodlist(Model model) {
		// foodlist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("foodlist", ls.foodlist());
		//
		return "list/foodlist";
	}
	@RequestMapping(value = "/list/houselist", method = RequestMethod.GET)
	public String houselist(Model model) {
		// houselist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("houselist", ls.houselist());
		//
		return "list/houselist";
	}
	@RequestMapping(value = "/list/sitelist", method = RequestMethod.GET)
	public String sitelist(Model model) {
		// sitelist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("sitelist", ls.sitelist());
		//
		return "list/sitelist";
	}
	@RequestMapping(value = "/list/tourlist", method = RequestMethod.GET)
	public String tourlist(Model model) {
		// tourlist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("tourlist", ls.tourlist());
		//
		return "list/tourlist";
	}
	@RequestMapping(value = "/list/translist", method = RequestMethod.GET)
	public String translist(Model model) {
		// translist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("translist", ls.translist());
		//
		return "list/translist";
	}
	
}
