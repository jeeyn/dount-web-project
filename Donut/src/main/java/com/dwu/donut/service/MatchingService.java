package com.dwu.donut.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.MatchingDao;
import com.dwu.donut.domain.Matching;

@Service
public class MatchingService {

	@Autowired
	MatchingDao matchingDao;
	
	public Matching getMatchingItem(int matchingId) {
		return matchingDao.getMatchingItem(matchingId);
	}
	
	public List<Matching> getMatchingList() {
		return matchingDao.getMatchingList();
	}
	
	public List<Matching> getUserMatchingList(String userId) {
		return matchingDao.getUserMatchingList(userId);
	}

	public void insertMatching(Matching matching) {
		
		matching.setMatchingDate(new Date());
		
		matchingDao.insertMatching(matching);
	}
	
	public void deleteMatching(int matchingId) {
		matchingDao.deleteMatching(matchingId);
	}
	
}
