package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;

import com.dwu.donut.domain.Donation;

public interface DonationMapper {
	
	Donation getDonationItem(int donationId);

	List<Donation> getDonationList();
	
	List<Donation> getUserDonationList(String userId);
	 
	void insertDonation(Donation donation);

	void updateDonation(Donation donation);
	
	void deleteDonation(Donation donation);
}
