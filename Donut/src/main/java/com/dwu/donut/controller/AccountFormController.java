package com.dwu.donut.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
class AccountFormController {

	@RequestMapping("/registerAccount.do")
	public String registerAccountForm() {
		return "register";
	}
	
}
