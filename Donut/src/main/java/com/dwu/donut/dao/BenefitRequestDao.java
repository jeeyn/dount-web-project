package com.dwu.donut.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dwu.donut.dao.mybatis.mapper.BenefitRequestMapper;
import com.dwu.donut.domain.BenefitRequest;

@Repository
public class BenefitRequestDao {

	@Autowired
	private BenefitRequestMapper benefitRequestMapper;
	
	public BenefitRequest getBenefitRequestItem(int brId) {
		return benefitRequestMapper.getBenefitRequestItem(brId);
	}
	
	public List<BenefitRequest> getBenefitRequestList(int donationId) {
		return benefitRequestMapper.getBenefitRequestList(donationId);
	}
	
	public void insertBenefitRequest(BenefitRequest benefitRequest) {
		benefitRequestMapper.insertBenefitRequest(benefitRequest);
	}
	
	public void updateBenefitRequest(BenefitRequest benefitRequest) {
		benefitRequestMapper.updateBenefitRequest(benefitRequest);
	}
	
	public void deleteBenefitRequest(BenefitRequest benefitRequest) {
		benefitRequestMapper.deleteBenefitRequest(benefitRequest);
	}
}
