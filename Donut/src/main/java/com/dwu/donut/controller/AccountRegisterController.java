package com.dwu.donut.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dwu.donut.dao.AccountDao;

@Controller
class AccountRegisterController {
	@Autowired
	private AccountDao accountDao;

	// 1. 회원가입 화면
	@RequestMapping("/accountRegister.do")
	public String accountRegisterForm() {
		return "register";
	}
	
	/* 2. 회원가입 처리
	@RequestMapping("/submitRegister
	public String submitRegisterForm(HttpServletRequest request) {
		@RequestParam()
		accountDao.insertAccount(request);
	}
	*/
}
