package com.dwu.donut.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.dao.DonationDao;
import com.dwu.donut.domain.Donation;

@Controller
public class DonationController {
	
	// 1. '기증해요' 게시판
	@RequestMapping("donationList.do")
	public String donationList() {
		return "donate_list";
	}
		
	// 2. '기증해요' 게시물
	@RequestMapping("donationItem.do")
	public ModelAndView donationItem(@RequestParam("donationId") int donationId) {
		
		DonationDao donationDao = new DonationDao();
		Donation donation = donationDao.getDonationItem(donationId);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("donate_item");
		mav.addObject("donation", donation);
		
		return mav;
	}
}
