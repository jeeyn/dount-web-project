package com.dwu.donut.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.Benefit;
import com.dwu.donut.domain.BenefitRequest;
import com.dwu.donut.domain.Donation;
import com.dwu.donut.domain.DonationRequest;
import com.dwu.donut.domain.Matching;
import com.dwu.donut.service.BenefitRequestService;
import com.dwu.donut.service.BenefitService;
import com.dwu.donut.service.DonationRequestService;
import com.dwu.donut.service.DonationService;
import com.dwu.donut.service.MatchingService;

@Controller
public class MatchingController {
	
	@Autowired
	public MatchingService matchingService;
	
	@Autowired
	public DonationService donationService;
	
	@Autowired
	public DonationRequestService donationRequestService;
	
	@Autowired
	public BenefitService benefitService;
	
	@Autowired
	public BenefitRequestService benefitRequestService;
	
	@RequestMapping(value="/matchDonation.do", method=RequestMethod.POST)
	public ModelAndView DonationTypematching(HttpSession session,
			@RequestParam(value="donationId") int donationId,
			@RequestParam(value="brId") int brId) {
		
		String me = (String)session.getAttribute("userId");
		Matching matching = new Matching();
		
		ModelAndView mav = new ModelAndView();

		Donation donation = donationService.getDonationItem(donationId);
		BenefitRequest benefitRequest = benefitRequestService.getBenefitRequestItem(brId);
		
		int donationAlbumQuantity = donation.getDonationAlbumQuantity();
		int brAlbumQuantity = benefitRequest.getBrAlbumQuantity();
		
		if (donationAlbumQuantity >= brAlbumQuantity) {
			matching.setMatchingType('D');
			
			matching.setDonationUserId(me);
			matching.setBenefitUserId(benefitRequest.getUserId());
			System.out.println(benefitRequest.getUserId());
			
			matching.setPostId(donation.getDonationId());
			matching.setRequestId(benefitRequest.getBrId());
			
			matching.setAlbumId(donation.getAlbumId());
			matching.setMatchingAlbumQuantity(benefitRequest.getBrAlbumQuantity());
			
			matchingService.insertMatching(matching);
			
			if (donationAlbumQuantity == 0) {
				donation.setDonationMatchingState('T');
			}
			
			benefitRequest.setBrMatchingState('T');
			System.out.println(benefitRequest.getBrMatchingState());
			
			donation.setDonationAlbumQuantity(donationAlbumQuantity - brAlbumQuantity);
			
			donationService.updateDonation(donation);
			benefitRequestService.updateBenefitRequest(benefitRequest);
		}
		
		if (me != null) { // 로그인이 되어있으면
			if (donation.getUserId().equals(me)) {
				session.setAttribute("isWriter", "me");
			} else {
				session.setAttribute("isWriter", "notMe");
			}
		}
		
		mav.setViewName("donate_item");
		mav.addObject("donation", donation);
		mav.addObject("benefitRequestList", benefitRequestService.getBenefitRequestList(donationId));
		
		return mav;
	}
	
	@RequestMapping(value="/matchBenefit.do", method=RequestMethod.POST)
	public ModelAndView BenefitTypematching(HttpSession session,
			@RequestParam(value="benefitId") int benefitId,
			@RequestParam(value="drId") int drId) {
		
		String me = (String)session.getAttribute("userId");
		Matching matching = new Matching();
		
		ModelAndView mav = new ModelAndView();

		Benefit benefit = benefitService.getBenefitItem(benefitId);
		DonationRequest donationRequest = donationRequestService.getDonationRequestItem(drId);
		
		int benefitAlbumQuantity = benefit.getBenefitAlbumQuantity();
		int drAlbumQuantity = donationRequest.getDrAlbumQuantity();
		
		if (benefitAlbumQuantity >= drAlbumQuantity) {
			matching.setMatchingType('B');
			
			matching.setBenefitUserId(me);
			matching.setDonationUserId(donationRequest.getUserId());
			
			matching.setPostId(benefit.getBenefitId());
			matching.setRequestId(donationRequest.getDrId());
			
			matching.setAlbumId(benefit.getAlbumId());
			matching.setMatchingAlbumQuantity(donationRequest.getDrAlbumQuantity());
			
			matchingService.insertMatching(matching);
			
			if (benefitAlbumQuantity == 0) {
				benefit.setBenefitMatchingState('T');
			}
			
			donationRequest.setDrMatchingState('T');
			
			benefit.setBenefitAlbumQuantity(benefitAlbumQuantity - drAlbumQuantity);
			
			benefitService.updateBenefit(benefit);
			donationRequestService.updateDonationRequest(donationRequest);
		}
		
		if (me != null) { // 로그인이 되어있으면
			if (benefit.getUserId().equals(me)) {
				session.setAttribute("isWriter", "me");
			} else {
				session.setAttribute("isWriter", "notMe");
			}
		}
		
		mav.setViewName("benefit_item");
		mav.addObject("benefit", benefit);
		mav.addObject("donationRequestList", donationRequestService.getDonationRequestList(benefitId));

		return mav;
	}

}
