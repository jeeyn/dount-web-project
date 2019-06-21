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

	// benefitRequest Comment 작성
	public void insertBenefitRequest(BenefitRequest benefitRequest) {
		benefitRequest.setBrDate(new Date());			
		benefitRequest.setBrMatchingState('F');
		benefitRequestDao.insertBenefitRequest(benefitRequest);
	}
	
	public List<BenefitRequest> getBenefitRequestList(int donationId) {
		return benefitRequestDao.getBenefitRequestList(donationId);
	}
	
}
