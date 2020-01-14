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
import com.dwu.donut.service.BenefitRequestService;
import com.dwu.donut.service.BenefitService;
import com.dwu.donut.service.DonationRequestService;
import com.dwu.donut.service.DonationService;

@Controller
public class AccountController {
	
	@Autowired
	public AccountService accountService;
	
	@Autowired
	public DonationService donationService;
	
	@Autowired
	public BenefitService benefitService;
	
	@Autowired
	public BenefitRequestService benefitRequestService;
	
	@Autowired
	public DonationRequestService donationRequestService;

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
	
	// 작성 게시물, 댓글 조회
	@RequestMapping({"/postingList.do", "/commentList.do"})
	public ModelAndView viewPostingList(HttpSession session, HttpServletRequest request) {
		String userId = (String)session.getAttribute("userId");
		String userType = accountService.getAccount(userId).getUserType();
		String userUrl = request.getServletPath();
		ModelAndView mav = new ModelAndView();
		
		if (userUrl.equals("/postingList.do")) {
			if (userType.equals("D")) {
				mav.addObject("userDonationList", donationService.getUserDonationList(userId));
			} else if (userType.equals("B")) {
				mav.addObject("userBenefitList", benefitService.getUserBenefitList(userId));
			}
		} else if (userUrl.equals("/commentList.do")) {
			if (userType.equals("D")) {
				mav.addObject("userDonationRequestList", donationRequestService.getUserDonationRequestList(userId));
			} else if (userType.equals("B")) {
				mav.addObject("userBenefitRequestList", benefitRequestService.getUserBenefitRequestList(userId));
			}
		}
	
		mav.addObject("userType", userType);
		mav.addObject("userUrl", userUrl);
		mav.setViewName("posting_list");

		return mav;
	}

}
