package com.dwu.donut.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.DonationDao;
import com.dwu.donut.domain.Donation;

@Service
public class DonationService {

	@Autowired
	DonationDao donationDao;
	
	// 전체 Donation List 불러오기
	public List<Donation> getDonationList() {
		return donationDao.getDonationList();
	}
	
	// User 작성 Donation List 불러오기
	public List<Donation> getUserDonationList(String userId) {
		return donationDao.getUserDonationList(userId);
	}
	
	// 'Donation' 게시물 View
	public Donation getDonationItem(int donationId) {
		return donationDao.getDonationItem(donationId);
	}

	// '기증해요' 게시물 작성
	public void insertDonation(Donation donation) {
		
		donation.setDonationDate(new Date());
		donation.setDonationMatchingState('F');
		
		donationDao.insertDonation(donation);
	}
	
	// 'Donation' 게시물 수정
	public void updateDonation(Donation donation) {
		donation.setDonationDate(new Date());
		donationDao.updateDonation(donation);
	}
	
	// 'Donation' 게시물 삭제
	public void deleteDonation(int donationId) {
		donationDao.deleteDonation(donationDao.getDonationItem(donationId));
	}
	
}
