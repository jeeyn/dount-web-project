package com.dwu.donut.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.dao.AccountDao;
import com.dwu.donut.domain.Account;
import com.dwu.donut.service.AccountService;

@Controller
public class AccountController {
	
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	public AccountService accountService;

	// 회원가입 화면
	@RequestMapping("/registerForm.do")
	public String accountRegisterForm() {
		return "register";
	}
	
	// 회원가입 처리
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String submitRegisterForm(@Valid Account account) {
		accountDao.insertAccount(account);
		return "index";
	}
	
	// 마이페이지 화면
	@RequestMapping("/myPage.do")
	public String viewMyPage(HttpSession session) {
		if (session.getAttribute("userId") != null) {
			return "my_page";
		} else {
			session.setAttribute("from", "my_page");
			return "login";
		}
	}
	
	// 개인정보조회 화면
	@RequestMapping("/viewAccount.do")
	public String viewAccountInfo() {
		return "view_account";
	}

}
