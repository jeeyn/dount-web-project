package com.dwu.donut.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.Account;
import com.dwu.donut.service.AccountService;
import com.dwu.donut.service.DonationService;

@Controller
public class LoginController {
	
	@Autowired
	public AccountService accountService;
	
	@Autowired
	public DonationService donationService;
	
	// 1. 로그인 화면
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		return "login";
	}
	
	// 2. 로그인 처리
	@RequestMapping("/login.do")
	public ModelAndView login(@ModelAttribute Account account, HttpSession session, HttpServletRequest request) {
		boolean loginResult = accountService.loginCheck(account, session);
		ModelAndView mav = new ModelAndView();
		String from = (String) session.getAttribute("from");
		
		if (loginResult == true) { // 로그인 성공
			if (from != null) {
				if (from.equals("donate_list")) {
					mav.addObject("donationList", donationService.getDonationList());
				}
				mav.setViewName(from); // 이전 페이지로 이동
			} else {
				mav.setViewName("index"); // index.jsp로 이동
			}
			
			mav.addObject("msg", "success");
		} else { // 로그인 실패
			mav.setViewName("login"); // login.jsp로 이동
			mav.addObject("msg", "failure");
		}
		
		return mav;
	}
	
	// 로그아웃 처리
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		accountService.logout(session);
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("index"); // index.jsp로 이동
		mav.addObject("msg", "logout");
		
		return mav;
	}
	
}
