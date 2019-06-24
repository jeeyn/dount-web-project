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
	
	public DonationRequest getDonationRequestItem(int drId) {
		return donationRequestDao.getDonationRequestItem(drId);
	}
	
	public List<DonationRequest> getDonationRequestList(int benefitId) {
		return donationRequestDao.getDonationRequestList(benefitId);
	}
	
	public List<DonationRequest> getUserDonationRequestList(String userId) {
		return donationRequestDao.getUserDonationRequestList(userId);
	}
	
	// donationRequest Comment 작성하기
	public void insertDonationRequest(DonationRequest donationRequest) {
		donationRequest.setDrDate(new Date());			
		donationRequest.setDrMatchingState('F');
		donationRequestDao.insertDonationRequest(donationRequest);
	}
	
	public void updateDonationRequest(DonationRequest donationRequest) {
		donationRequestDao.updateDonationRequest(donationRequest);
	}
	
	public void deleteDonationRequest(DonationRequest donationRequest) {
		donationRequestDao.deleteDonationRequest(donationRequest);
	}
	
}
