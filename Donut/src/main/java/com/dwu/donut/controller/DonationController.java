package com.dwu.donut.controller;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.Donation;
import com.dwu.donut.service.AccountService;
import com.dwu.donut.service.AlbumService;
import com.dwu.donut.service.BenefitRequestService;
import com.dwu.donut.service.DonationService;

@Controller
public class DonationController {
	
	@Autowired
	public DonationService donationService;
	@Autowired
	public AccountService accountService;
	@Autowired
	public AlbumService albumService;
	@Autowired
	public BenefitRequestService benefitRequestService;
	
	// 'Donation' 게시판 View
	@RequestMapping("donationList.do")
	@ModelAttribute("donationList")
	public ModelAndView donationList() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("donate_list");
		mav.addObject("donationList", donationService.getDonationList());
		
		return mav;
	}
		
	// 'Donation' 게시물 View
	@RequestMapping("/donationItem.do")
	@ModelAttribute("benefitRequestList")
	public ModelAndView donationItem(@RequestParam("donationId") int donationId, HttpSession session) {
		
		Donation donation = donationService.getDonationItem(donationId);
		String userId = (String)session.getAttribute("userId");
		
		ModelAndView mav = new ModelAndView();
		
		if (userId != null) { // 로그인이 되어있으면
			if (donation.getUserId().equals(userId)) {
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
	
	// 'Donation' 게시물 작성 화면
	@RequestMapping("createDonationItemForm.do")
	public String createDonationItemForm(HttpSession session) {
		if (session.getAttribute("userId") != null) {
			return "create_donation_item_form";
		} else {
			session.setAttribute("from", "create_donation_item_form");
			return "login";
		}
	}
	
	// 'Donation' 게시물 작성하기
	@RequestMapping(value="createDonationItem.do", method=RequestMethod.POST)
	public ModelAndView createDonationItem(Donation donation, HttpSession session) {
		donation.setUserId((String)session.getAttribute("userId"));
		donationService.insertDonation(donation);
		
		return donationList();
	}
	
	// 'Donation' 게시물 수정 화면
	@RequestMapping("updateDonationItemForm.do")
	public ModelAndView updateDonationItemForm(@RequestParam int donationId) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("donation", donationService.getDonationItem(donationId));
		mav.addObject("albumList", albumService.getAlbumList());
		mav.setViewName("update_donation_item_form");
		
		return mav;
	}
	
	// 'Donation' 게시물 수정하기
	@RequestMapping("updateDonationItem.do")
	public ModelAndView updateDonationItem(Donation donation) {
		donationService.updateDonation(donation);
		
		return donationList();
	}
	
	// 'Donation' 게시물 삭제하기
	@RequestMapping("deleteDonationItem.do")
	public ModelAndView deleteDonationItem(int donationId) {
		donationService.deleteDonation(donationId);
		
		return donationList();
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
