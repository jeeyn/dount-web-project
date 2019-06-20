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

import com.dwu.donut.dao.DonationDao;
import com.dwu.donut.domain.Donation;
import com.dwu.donut.service.AccountService;
import com.dwu.donut.service.DonationService;

@Controller
public class DonationController {
	
	@Autowired
	public DonationService donationService;
	
	// 1. '기증해요' 게시판
	@RequestMapping("donationList.do")
	@ModelAttribute("donationList")
	public ModelAndView donationList() {
		
		List<Donation> donationList = donationService.getDonationList();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("donate_list");
		mav.addObject("donationList", donationList);
		
		return mav;
	}
		
	// 2. '기증해요' 게시물
	@RequestMapping("/donationItem.do")
	public ModelAndView donationItem(@RequestParam("donationId") int donationId) {
		
		Donation donation = donationService.getDonationItem(donationId);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("donate_item");
		mav.addObject("donation", donation);
		
		return mav;
	}
	
	// 3. '기증해요' 게시물 작성 화면
	@RequestMapping("createDonationItemForm.do")
	public String createDonationItemForm(HttpSession session) {
		if (session.getAttribute("userId") != null) {
			return "create_donation_item";
		} else {
			return "login";
		}
	}
	
	// 4. '기증해요' 게시물 작성하기
	@RequestMapping("createDonationItem.do")
	public String createDonationItem(Donation donation) {
		
		donationService.insertDonation(donation);
		
		return "donate_list";
	}
	
	// 5. '기증해요' 게시물 수정하기
	@RequestMapping("updateDonationItemForm.do")
	public String updateDonationItem(Donation donation) {
		return "create_donate_item";
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
