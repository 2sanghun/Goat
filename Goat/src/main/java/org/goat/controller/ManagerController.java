package org.goat.controller;

import org.goat.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {
	
	
	@RequestMapping(value = "/manager/manager", method = RequestMethod.GET)
	public void manager() {
	}
	@RequestMapping(value = "/manager/memDetail", method = RequestMethod.GET)
	public void memDetail() {
		
	}
	@RequestMapping(value = "/manager/managerWriteList", method = RequestMethod.GET)
	public void managerWriteList() {
		
	}
	
}
