package com.dwu.donut.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dwu.donut.dao.mybatis.mapper.DonationMapper;
import com.dwu.donut.domain.Donation;

@Repository
public class DonationDao {

	@Autowired
	private DonationMapper donationMapper;
	
	public Donation getDonationItem(int donationId) {
		return donationMapper.getDonationItem(donationId);
	}
	
	public List<Donation> getDonationList(Donation donation) {
		return donationMapper.getDonationList();
	}
	
	public void insertDonation(Donation donation) {
		donationMapper.insertDonation(donation);
	}
	
	public void updateDonation(Donation donation) {
		donationMapper.updateDonation(donation);
	}
	
	public void deleteDonation(Donation donation) {
		donationMapper.deleteDonation(donation);
	}
}
