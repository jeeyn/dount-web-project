package com.dwu.donut.controller;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.Account;
import com.dwu.donut.domain.Donation;
import com.dwu.donut.service.AccountService;
import com.dwu.donut.service.BenefitRequestService;
import com.dwu.donut.service.DonationService;

@Controller
public class DonationController {
	
	@Autowired
	public DonationService donationService;
	
	@Autowired
	public AccountService accountService;
	
	@Autowired
	public BenefitRequestService benefitRequestService;
	
	// 1. '기증해요' 게시판
	@RequestMapping("donationList.do")
	@ModelAttribute("donationList")
	public ModelAndView donationList() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("donate_list");
		mav.addObject("donationList", donationService.getDonationList());
		
		return mav;
	}
	
	// 2. '기증해요' 게시물
	@RequestMapping("/donationItem.do")
	@ModelAttribute("benefitRequestList")
	public ModelAndView donationItem(@RequestParam("donationId") int donationId, HttpSession session) {
		
		Donation donation = donationService.getDonationItem(donationId);
		String userId = (String)session.getAttribute("userId");
		
		ModelAndView mav = new ModelAndView();
		
		if (userId != null) { // 로그인이 되어있으면
			if (donation.getUserId().equals(userId)) {
				mav.addObject("isWriter", "me");
			} else {
				mav.addObject("isWriter", "notMe");
			}
		}
		
		mav.setViewName("donate_item");
		mav.addObject("donation", donation);
		mav.addObject("benefitRequestList", benefitRequestService.getBenefitRequestList(donationId));

		return mav;
	}
	
	// 3. '기증해요' 게시물 작성 화면
	@RequestMapping({"createDonationItemForm.do", "updateDonationItemForm.do"})
	public String createDonationItemForm(HttpSession session) {
		if (session.getAttribute("userId") != null) {
			return "donation_item_form";
		} else {
			session.setAttribute("from", "donation_item_form");
			return "login";
		}
	}
	
	// 4. '기증해요' 게시물 작성하기
	@RequestMapping("createDonationItem.do")
	public String createDonationItem(@ModelAttribute Account account, Donation donation) {
		
		donationService.insertDonation(account, donation);
		
		return "donate_list";
	}
	
	// 5. '기증해요' 게시물 수정하기
	@RequestMapping("updateDonationItem.do")
	public String updateDonationItem(Donation donation) {
		return "donate_item";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) throws Exception {
	    binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {

	        public void setAsText(String text) throws IllegalArgumentException {
	            try {
	                setValue(new SimpleDateFormat("yyyy-MM-dd").parse(text));
	            } catch (ParseException e) {
	                setValue(null);
	            }
	        }
	    });
	}

}
