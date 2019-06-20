package com.dwu.donut.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.AccountDao;
import com.dwu.donut.dao.DonationDao;
import com.dwu.donut.domain.Account;
import com.dwu.donut.domain.Donation;

@Service
public class DonationService {

	@Autowired
	DonationDao donationDao;
	@Autowired
	AccountDao accountDao;
	
	// 1. '기증해요' 게시판
	public List<Donation> getDonationList() {
		return donationDao.getDonationList();
	}
	
	// 2. '기증해요' 게시물
	public Donation getDonationItem(int donationId) {
		return donationDao.getDonationItem(donationId);
	}

	// 3. '기증해요' 게시물 작성하기
	public void insertDonation(Account account, Donation donation) {
		donation.setUserId(account.getUserId());
		donationDao.insertDonation(donation);
	}
	
	
}
