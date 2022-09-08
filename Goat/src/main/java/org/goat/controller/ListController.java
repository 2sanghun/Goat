package org.goat.controller;

import org.goat.model.CriteriaVO;
import org.goat.model.pageVO;
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
	public String list(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// list.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager",ls.manager());
		// list.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list(cri));
		// list 폴더 안에 있는 list.jsp 실행 할 때 pageVO에 저장되어 있는 데이터를 가져와라.
		//							생성자 호출(매개변수가 없는 생성자)
		// int total = ls.total();
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());
		return "list/list";
		
	}
	
	@RequestMapping(value = "/list/list_icon2", method = RequestMethod.GET)
	public String list_icon2(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// list.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager",ls.manager());
		// list.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.imglist(cri));
		System.out.println(ls.imglist(cri));
		// list 폴더 안에 있는 list.jsp 실행 할 때 pageVO에 저장되어 있는 데이터를 가져와라.
		//							생성자 호출(매개변수가 없는 생성자)
		// int total = ls.total();
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());
		return "list/list_icon2";
		
	}

/* 필요없어짐
	@RequestMapping(value = "/list/sitelist", method = RequestMethod.GET)
	public String sitelist(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// sitelist.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager", ls.manager());
		// sitelist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list(cri));
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());		
		return "list/sitelist";
	}
*/
	
/* 컨트롤러 하나만 사용하게 수정
	@RequestMapping(value = "/list/houselist", method = RequestMethod.GET)
	public String houselist(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// sitelist.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager", ls.manager());
		// sitelist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list(cri));
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());		
		return "list/houselist";
	}	

	@RequestMapping(value = "/list/foodlist", method = RequestMethod.GET)
	public String foodlist(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// sitelist.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager", ls.manager());
		// sitelist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list(cri));
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());		
		return "list/foodlist";
	}

	@RequestMapping(value = "/list/translist", method = RequestMethod.GET)
	public String translist(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// sitelist.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager", ls.manager());
		// sitelist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list(cri));
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());		
		return "list/translist";
	}
	
	@RequestMapping(value = "/list/tourlist", method = RequestMethod.GET)
	public String tourlist(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// sitelist.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager", ls.manager());
		// sitelist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list(cri));
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());		
		return "list/tourlist";
	}
*/

/* 매퍼에 sql 수정으로 인해 수정 했다
	@RequestMapping(value = "/list/sitelist", method = RequestMethod.GET)
	public String sitelist(Model model, CriteriaVO cri) {
		System.out.println(cri);
		// sitelist.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("sitelist", ls.sitelist(cri));
		
		int total = ls.total(cri);
		model.addAttribute("paging", new pageVO(cri, total));
		return "list/sitelist";
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
*/	

}
