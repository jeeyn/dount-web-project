package com.dwu.donut.dao;

import java.util.List;
import com.dwu.donut.domain.Account;

public interface AccountMapper {

  Account getAccountByUserId(String userId);

  Account getAccountByUserIdAndPassword(String userId, String password);

  List<Account> getAccountList();
  
  void insertAccount(Account account);

  void updateAccount(Account account);
  
  void deleteAccount(Account account);

}
