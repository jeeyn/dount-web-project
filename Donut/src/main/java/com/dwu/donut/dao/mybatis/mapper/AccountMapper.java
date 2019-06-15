package com.dwu.donut.dao.mybatis.mapper;

import com.dwu.donut.domain.Account;

public interface AccountMapper {

  Account getAccountByUserId(String userId);

  Account getAccountByUserIdAndPassword(String userId, String password);
  
  void insertAccount(Account account);

  void updateAccount(Account account);
  
  void deleteAccount(Account account);

}
