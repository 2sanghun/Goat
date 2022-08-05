package org.goat.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	@RequestMapping(value = "/mypage/favorite", method = RequestMethod.GET)
	public void favorite() {
		
	}
	@RequestMapping(value = "/mypage/memModify", method = RequestMethod.GET)
	public void memModify() {
		
	}
	@RequestMapping(value = "/mypage/mypage", method = RequestMethod.GET)
	public void mypage() {
		
	}
	@RequestMapping(value = "/mypage/Withdrawal", method = RequestMethod.GET)
	public void Withdrawal() {
		
	}
}
