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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dwu.donut.domain.Benefit;
import com.dwu.donut.service.AccountService;
import com.dwu.donut.service.AlbumService;
import com.dwu.donut.service.DonationRequestService;
import com.dwu.donut.service.BenefitService;

@Controller
public class BenefitController {

	@Autowired
	public BenefitService benefitService;
	
	@Autowired
	public AccountService accountService;
	
	@Autowired
	public AlbumService albumService;
	
	@Autowired
	public DonationRequestService donationRequestService;
	
	// 'Benefit' 게시판 View
	@RequestMapping("benefitList.do")
	@ModelAttribute("benefitList")
	public ModelAndView benefitList() {
		
		List<Benefit> benefitList = benefitService.getBenefitList();
		
		ModelAndView mav = new ModelAndView();
		
		for (int i = 0; i < benefitList.size(); i++) {
			
			int albumId = benefitList.get(i).getAlbumId();
			benefitList.get(i).setAlbum(albumService.getAlbumItem(albumId));
		}
		
		mav.setViewName("benefit_list");
		mav.addObject("benefitList", benefitList);
		
		return mav;
	}
		
	// 'Benefit' 게시물 View
	@RequestMapping("/benefitItem.do")
	@ModelAttribute("dontaionRequestList")
	public ModelAndView benefitItem(@RequestParam("benefitId") int benefitId, HttpSession session) {
		
		Benefit benefit = benefitService.getBenefitItem(benefitId);
		String userId = (String)session.getAttribute("userId");
		
		ModelAndView mav = new ModelAndView();
		
		if (userId != null) { // 로그인이 되어있으면
			if (benefit.getUserId().equals(userId)) {
				session.setAttribute("isWriter", "me");
			} else {
				session.setAttribute("isWriter", "notMe");
			}
		}
		
		mav.setViewName("benefit_item");
		mav.addObject("benefit", benefit);
		mav.addObject("album", albumService.getAlbumItem(benefit.getAlbumId()));
		mav.addObject("donationRequestList", donationRequestService.getDonationRequestList(benefitId));

		return mav;
	}
	
	// 'Benefit' 게시물 작성 화면
	@RequestMapping("createBenefitItemForm.do")
	public String createDonationItemForm(HttpSession session) {		
		if (session.getAttribute("userId") != null) {
			return "create_benefit_item_form";
		} else {
			session.setAttribute("from", "create_benefit_item_form");
			return "login";
		}
	}
	
	// '' 게시물 작성하기
	@RequestMapping(value="createBenefitItem.do", method=RequestMethod.POST)
	public ModelAndView createBenefitItem(Benefit benefit, HttpSession session) {
		benefit.setUserId((String)session.getAttribute("userId"));
		benefitService.insertBenefit(benefit);
		
		return benefitList();
	}
	
	// 'Benefit' 게시물 수정 화면
	@RequestMapping("updateBenefitItemForm.do")
	public ModelAndView updateBenefitItemForm(@RequestParam int benefitId) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("benefit", benefitService.getBenefitItem(benefitId));
		mav.setViewName("update_benefit_item_form");
		
		return mav;
	}
	
	// 'Benefit' 게시물 수정하기
	@RequestMapping("updateBenefitItem.do")
	public ModelAndView updateBenefitItem(Benefit benefit) {
		benefitService.updateBenefit(benefit);
		return benefitList();
	}
	
	// 'Benefit' 게시물 삭제하기
	@RequestMapping("deleteBenefitItem.do")
	public ModelAndView deleteBenefitItem(int benefitId) {
		benefitService.deleteBenefit(benefitId);
		return benefitList();
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
