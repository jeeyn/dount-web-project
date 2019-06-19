package com.dwu.donut.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
class AccountRegisterController {

	@RequestMapping("/registerAccount.do")
	public String accountRegisterForm() {
		return "register";
	}
	
}
