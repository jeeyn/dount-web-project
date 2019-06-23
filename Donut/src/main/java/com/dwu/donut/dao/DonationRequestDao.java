package com.dwu.donut.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dwu.donut.dao.mybatis.mapper.DonationRequestMapper;
import com.dwu.donut.domain.DonationRequest;

@Repository
public class DonationRequestDao {

	@Autowired
	private DonationRequestMapper donationRequestMapper;
	
	public DonationRequest getDonatioRequestItem(int brId) {
		return donationRequestMapper.getDonationRequestItem(brId);
	}
	
	public List<DonationRequest> getDonationRequestList(int benefitId) {
		return donationRequestMapper.getDonationRequestList(benefitId);
	}
	
	public void insertDonationRequest(DonationRequest donationRequest) {
		donationRequestMapper.insertDonationRequest(donationRequest);
	}
	
	public void updateDonationRequest(DonationRequest donationRequest) {
		donationRequestMapper.updateDonationRequest(donationRequest);
	}
	
	public void deleteDonationRequest(DonationRequest donationRequest) {
		donationRequestMapper.deleteDonationRequest(donationRequest);
	}
	
}
