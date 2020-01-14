package com.dwu.donut.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.BenefitDao;
import com.dwu.donut.domain.Benefit;

@Service
public class BenefitService {

	@Autowired
	BenefitDao benefitDao;
	
	// 전체 Benefit List 불러오기
	public List<Benefit> getBenefitList() {
		return benefitDao.getBenefitList();
	}
	
	// User 작성 Benefit List 불러오기
	public List<Benefit> getUserBenefitList(String userId) {
		return benefitDao.getUserBenefitList(userId);
	}
	
	// 'Benefit' 게시물 View
	public Benefit getBenefitItem(int benefitId) {
		return benefitDao.getBenefitItem(benefitId);
	}

	// 'Benefit' 게시물 작성
	public void insertBenefit(Benefit benefit) {
		
		benefit.setBenefitDate(new Date());
		benefit.setBenefitMatchingState('F');
		
		benefitDao.insertBenefit(benefit);
	}
	
	// 'Benefit' 게시물 수정
	public void updateBenefit(Benefit benefit) {
		benefit.setBenefitDate(new Date());
		
		benefitDao.updateBenefit(benefit);
	}
	
	// 'Benefit' 게시물 삭제
	public void deleteBenefit(int benefitId) {
		benefitDao.deleteBenefit(benefitDao.getBenefitItem(benefitId));
	}
}
