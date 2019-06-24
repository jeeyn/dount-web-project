package com.dwu.donut.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.DonationRequestDao;
import com.dwu.donut.domain.DonationRequest;

@Service
public class DonationRequestService {

	@Autowired
	DonationRequestDao donationRequestDao;

	public void insertDonationRequest(DonationRequest donationRequest) {
		donationRequest.setDrDate(new Date());			
		donationRequest.setDrMatchingState('F');
		donationRequestDao.insertDonationRequest(donationRequest);
	}
	
	public List<DonationRequest> getDonationRequestList(int benefitId) {
		return donationRequestDao.getDonationRequestList(benefitId);
	}
	
	public List<DonationRequest> getUserDonationRequestList(String userId) {
		return donationRequestDao.getUserDonationRequestList(userId);
	}
	
}
