package com.dwu.donut.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.service.AlbumService;
import com.dwu.donut.service.DonationService;

@Controller
public class MainController {

	@Autowired
	public DonationService donationService;
	@Autowired
	public AlbumService albumService;
	
	@RequestMapping("/index.do")
	public ModelAndView index() {

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("index");
		
		// 가장 최근 9개의 'Donation' 게시물
		mav.addObject("donationSubList", donationService.getDonationList().subList(0, 9));
		
		return mav;
	}
}
