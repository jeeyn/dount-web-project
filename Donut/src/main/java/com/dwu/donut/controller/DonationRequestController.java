package com.dwu.donut.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.DonationRequest;
import com.dwu.donut.service.DonationRequestService;
import com.dwu.donut.service.BenefitService;

@Controller
public class DonationRequestController {

	@Autowired
	public DonationRequestService donationRequestService;
	@Autowired
	private BenefitService benefitService;
	
	// 'Benefit' 게시물에 기부 신청
	@RequestMapping(value="/requestDonation.do", method=RequestMethod.POST)
	public ModelAndView createDonationRequest(HttpSession session, DonationRequest donationRequest) {
		String userId = (String) session.getAttribute("userId");
		
		ModelAndView mav = new ModelAndView();
		
		if (userId != null) {
			donationRequest.setUserId(userId);
			donationRequestService.insertDonationRequest(donationRequest);
			mav.addObject("benefitList", benefitService.getBenefitList());
			mav.setViewName("benefit_list");
			
			return mav;
		} else {
			session.setAttribute("from", "benefit_list");
			mav.setViewName("login");
			return mav;
		}
	}
}