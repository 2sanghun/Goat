package org.goat.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DetailController {
	@RequestMapping(value = "/detail/detail", method = RequestMethod.GET)
	public void detail() {
		
	}
	@RequestMapping(value = "/detail/modify", method = RequestMethod.GET)
	public void modify() {
		
	}
}
