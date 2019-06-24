package com.dwu.donut.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.BenefitRequestDao;
import com.dwu.donut.domain.BenefitRequest;

@Service
public class BenefitRequestService {

	@Autowired
	BenefitRequestDao benefitRequestDao;
	
	public BenefitRequest getBenefitRequestItem(int brId) {
		return benefitRequestDao.getBenefitRequestItem(brId);
	}
	
	public List<BenefitRequest> getBenefitRequestList(int donationId) {
		return benefitRequestDao.getBenefitRequestList(donationId);
	}
	
	public List<BenefitRequest> getUserBenefitRequestList(String userId) {
		return benefitRequestDao.getUserBenefitRequestList(userId);
	}
	
	// benefitRequest Comment 작성
	public void insertBenefitRequest(BenefitRequest benefitRequest) {
		benefitRequest.setBrDate(new Date());			
		benefitRequest.setBrMatchingState('F');
		benefitRequestDao.insertBenefitRequest(benefitRequest);
	}
	
	public void updateBenefitRequest(BenefitRequest benefitRequest) {
		benefitRequestDao.updateBenefitRequest(benefitRequest);
	}
	
	public void deleteBenefitRequest(BenefitRequest benefitRequest) {
		benefitRequestDao.deleteBenefitRequest(benefitRequest);
	}
	
}
