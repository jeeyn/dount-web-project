package com.dwu.donut.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.dwu.donut.dao.mybatis.mapper.DonationMapper;
import com.dwu.donut.domain.Donation;

public class DonationDao {

	@Autowired
	private DonationMapper donationMapper;
	
	public Donation getDonationItem(int donationId) {
		return donationMapper.getDonationItem(donationId);
	}
	
	public List<Donation> getDonationList(Donation donation) {
		return donationMapper.getDonationList();
	}
	 
}
