package org.goat.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	 public void main() {
		
	}
	
	@RequestMapping(value = "/main/write", method = RequestMethod.GET)
	public void write() {
		
	}
	
	@RequestMapping(value = "/header/login", method = RequestMethod.GET)
	public void login() {
		
	}
	
	@RequestMapping(value = "/header/signup", method = RequestMethod.GET)
	public void signup() {
		
	}
}
