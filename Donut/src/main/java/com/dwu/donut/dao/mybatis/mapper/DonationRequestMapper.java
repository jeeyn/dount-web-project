package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;
import com.dwu.donut.domain.DonationRequest;

public interface DonationRequestMapper {

	DonationRequest getDonationRequestItem(int drId);

	List<DonationRequest> getDonationRequestList(int benefitId);
	 
	void insertDonationRequest(DonationRequest donationRequest);

	void updateDonationRequest(DonationRequest donationRequest);
	
	void deleteDonationRequest(DonationRequest donationRequest);
	
}
