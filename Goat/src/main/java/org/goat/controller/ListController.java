package org.goat.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ListController {
	@RequestMapping(value = "/list/list", method = RequestMethod.GET)
	public void list() {
		
	}
	@RequestMapping(value = "/list/foodlist", method = RequestMethod.GET)
	public void foodlist() {
		
	}
	@RequestMapping(value = "/list/houselist", method = RequestMethod.GET)
	public void houselist() {
		
	}
	@RequestMapping(value = "/list/sitelist", method = RequestMethod.GET)
	public void sitelist() {
		
	}
	@RequestMapping(value = "/list/tourlist", method = RequestMethod.GET)
	public void tourlist() {
		
	}
	@RequestMapping(value = "/list/translist", method = RequestMethod.GET)
	public void translist() {
		
	}
	
}
