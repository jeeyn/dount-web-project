package com.dwu.donut.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dwu.donut.dao.mybatis.mapper.MatchingMapper;
import com.dwu.donut.domain.Matching;

@Repository
public class MatchingDao {

	@Autowired
	private MatchingMapper matchingMapper;
	
	public Matching getMatchingItem(int matchingId) {
		return matchingMapper.getMatchingItem(matchingId);
	}
	
	public List<Matching> getMatchingList() {
		return matchingMapper.getMatchingList();
	}
	
	public List<Matching> getUserMatchingList(String userId) {
		return matchingMapper.getUserMatchingList(userId);
	}
	
	public void insertMatching(Matching matching) {
		matchingMapper.insertMatching(matching);
	}
	
	public void deleteMatching(int matchingId) {
		matchingMapper.deleteMatching(matchingId);
	}
}
