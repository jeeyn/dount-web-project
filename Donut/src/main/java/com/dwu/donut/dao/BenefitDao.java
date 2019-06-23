package com.dwu.donut.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dwu.donut.dao.mybatis.mapper.BenefitMapper;
import com.dwu.donut.domain.Benefit;

@Repository
public class BenefitDao {

	@Autowired
	private BenefitMapper benefitMapper;
	
	public Benefit getBenefitItem(int benefitId) {
		return benefitMapper.getBenefitItem(benefitId);
	}
	
	public List<Benefit> getBenefitList() {
		return benefitMapper.getBenefitList();
	}
	
	public List<Benefit> getUserBenefitList(String userId) {
		return benefitMapper.getUserBenefitList(userId);
	}
	
	public void insertBenefit(Benefit benefit) {
		benefitMapper.insertBenefit(benefit);
	}
	
	public void updateBenefit(Benefit benefit) {
		benefitMapper.updateBenefit(benefit);
	}
	
	public void deleteBenefit(Benefit benefit) {
		benefitMapper.deleteBenefit(benefit);
	}
	
}
