package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;

import com.dwu.donut.domain.Album;
import com.dwu.donut.domain.Matching;

public interface MatchingMapper {
	
	Matching getMatchingItem(int matchingId);

	List<Matching> getMatchingList();
	
	List<Matching> getUserMatchingList(String userId);
	 
	void insertMatching(Matching matching);

	void deleteMatching(int matchingId);
}
