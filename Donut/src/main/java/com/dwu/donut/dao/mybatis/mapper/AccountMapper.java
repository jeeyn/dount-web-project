package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;
import com.dwu.donut.domain.Account;
import org.springframework.dao.DataAccessException;

public interface AccountMapper {

  Account getAccountByUserId(String userId);

  Account getAccountByUserIdAndPassword(String userId, String password);
  
  void insertAccount(Account account);

  void updateAccount(Account account);
  
  void deleteAccount(Account account);

}
