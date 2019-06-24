package com.dwu.donut.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.BenefitRequest;
import com.dwu.donut.service.BenefitRequestService;
import com.dwu.donut.service.DonationService;

@Controller
public class BenefitRequestController {
	
	@Autowired
	public BenefitRequestService benefitRequestService;
	
	@Autowired
	private DonationService donationService;
	
	// 'Donation' 게시물에 기부 요청
	@RequestMapping(value="/requestBenefit.do", method=RequestMethod.POST)
	public ModelAndView createBenefitRequest(HttpSession session, BenefitRequest benefitRequest) {
		String userId = (String) session.getAttribute("userId");
		
		ModelAndView mav = new ModelAndView();
		
		if (userId != null) {
			benefitRequest.setUserId(userId);
			benefitRequestService.insertBenefitRequest(benefitRequest);
			mav.addObject("donationList", donationService.getDonationList());
			mav.setViewName("donate_list");
			
			return mav;
		} else {
			session.setAttribute("from", "donate_list");
			mav.setViewName("login");
			return mav;
		}
	}

}
