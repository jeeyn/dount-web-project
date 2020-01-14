package com.dwu.donut.dao.mybatis.mapper;

import com.dwu.donut.domain.Account;

public interface AccountMapper {
	
	/*@Select({"SELECT USER_ID, PASSWORD, USER_NAME, EMAIL, PHONE, COUNTRY,"
			+ "ADDRESS_1, ADDRESS_2, ZIP_CODE, USER_TYPE"
			+ "FROM ACCOUNT"
			+ "WHERE USER_ID = #{userId}"})*/
	Account getAccountByUserId(String userId);
	
	/*@Select({"SELECT USER_ID, PASSWORD, USER_NAME, EMAIL, PHONE, COUNTRY,"
			+ "ADDRESS_1, ADDRESS_2, ZIP_CODE, USER_TYPE"
			+ "FROM ACCOUNT"
			+ "WHERE USER_ID = #{param1} AND PASSWORD = #{param2}"})*/
	Account getAccountByUserIdAndPassword(String userId, String password);
	
	void insertAccount(Account account);
	
	void updateAccount(Account account);
  
  void deleteAccount(Account account);

}
