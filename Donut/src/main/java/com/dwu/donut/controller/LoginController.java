package com.dwu.donut.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.Account;

@Controller
public class LoginController {

	// 1. 로그인 화면
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		return "login";
	}
	
	// 2. 로그인 처리
	@RequestMapping("/login.do")
	public ModelAndView login(Account account) {
		
		ModelAndView mav = new ModelAndView("index");
		
		return mav;
	}
	
	// 3. 로그아웃 처리
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) throws Exception {
		session.removeAttribute("userSession");
		session.invalidate();
		
		return "index";
	}
}
