package com.dwu.donut.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dwu.donut.dao.AccountDao;
import com.dwu.donut.domain.Account;

@Controller
public class AccountController {
	
	@Autowired
	private AccountDao accountDao;

	// 1. 회원가입 화면
	@RequestMapping("/registerForm.do")
	public String accountRegisterForm() {
		return "register";
	}
	
	// 2. 회원가입 처리
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String submitRegisterForm(@Valid Account account) {
		accountDao.insertAccount(account);
		return "index";
	}
	
	// 3. 마이페이지
	@RequestMapping("/myPage.do")
	public String viewMyPage(HttpSession session) {
		if (session.getAttribute("userId") != null) {
			return "my_page";
		} else {
			return "login";
		}
	}

}
