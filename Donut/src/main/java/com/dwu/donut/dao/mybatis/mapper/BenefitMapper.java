package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;
import com.dwu.donut.domain.Benefit;

public interface BenefitMapper {

	Benefit getBenefitItem(int benefitId);

	List<Benefit> getBenefitList();
	 
	void insertBenefit(Benefit benefit);

	void updateBenefit(Benefit benefit);
	
	void deleteBenefit(Benefit benefit);
}
