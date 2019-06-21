package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;

import com.dwu.donut.domain.BenefitRequest;

public interface BenefitRequestMapper {
	
	BenefitRequest getBenefitRequestItem(int brId);

	List<BenefitRequest> getBenefitRequestList(int donationId);
	 
	void insertBenefitRequest(BenefitRequest benefitRequest);

	void updateBenefitRequest(BenefitRequest benefitRequest);
	
	void deleteBenefitRequest(BenefitRequest benefitRequest);
}
