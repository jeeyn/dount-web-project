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
	
	// 1. 'Benefit' 게시판 View
	public List<Benefit> getBenefitList() {
		return benefitDao.getBenefitList();
	}
	
	// 2. 'Benefit' 게시물 View
	public Benefit getBenefitItem(int benefitId) {
		return benefitDao.getBenefitItem(benefitId);
	}

	// 3. 'Benefit' 게시물 작성하기
	public void insertBenefit(Benefit benefit) {
		
		benefit.setBenefitDate(new Date());
		benefit.setBenefitMatchingState('F');
		
		benefitDao.insertBenefit(benefit);
	}
	
	// 4. 'Benefit' 게시물 수정하기
	public void updateBenefit(Benefit benefit) {
		benefit.setBenefitDate(new Date());
		
		benefitDao.updateBenefit(benefit);
	}
	
	// 5. 'Benefit' 게시물 삭제하기
	public void deleteBenefit(int benefitId) {
		benefitDao.deleteBenefit(benefitDao.getBenefitItem(benefitId));
	}
}
