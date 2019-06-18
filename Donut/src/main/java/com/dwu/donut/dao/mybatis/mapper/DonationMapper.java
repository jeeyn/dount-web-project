package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;

import com.dwu.donut.domain.Donation;

public interface DonationMapper {
	
	Donation getDonationItem(int donationId);

	List<Donation> getDonationList();
	 
	void insertAccount(Donation donation);

	void updateAccount(Donation donation);
	
	void deleteAccount(Donation donation);
}
