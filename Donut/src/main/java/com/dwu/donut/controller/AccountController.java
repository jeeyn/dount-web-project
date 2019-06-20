package com.dwu.donut.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.Account;
import com.dwu.donut.service.AccountService;

@Controller
public class AccountController {
	
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
		accountService.registerAccount(account);
		return "index";
	}
	
	// 마이페이지 화면
	@RequestMapping("/myPage.do")
	public String viewMyPage(HttpSession session) {	
		if (session.getAttribute("userId") != null) { // 로그인이 되어있으면
			return "my_page";
		} else {
			session.setAttribute("from", "my_page");
			return "login";
		}
	}
	
	// 개인정보조회, 개인정보수정 화면
	@RequestMapping(value= {"/viewAccount.do", "/updateAccount.do"})
	public ModelAndView viewAccountInfo(HttpSession session, HttpServletRequest request) {
		String userId = (String)session.getAttribute("userId");
		String userUrl = request.getServletPath();
		ModelAndView mav = new ModelAndView();
		
		if (userUrl.contentEquals("/viewAccount.do")) {
			mav.setViewName("view_account");
		} else if (userUrl.contentEquals("/updateAccount.do")) {
			mav.setViewName("update_account");
		}
		
		mav.addObject("account", accountService.getAccount(userId));
		
		return mav;
	}
	
	// 회원정보수정 처리
	@RequestMapping(value="/update.do", method=RequestMethod.POST)
	public String submitUpdateForm(@Valid Account account) {
		accountService.updateAccount(account);
		return "my_page";
	}

}
