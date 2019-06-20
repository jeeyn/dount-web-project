package com.dwu.donut.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.dwu.donut.dao.mybatis.mapper.AccountMapper;
import com.dwu.donut.domain.Account;


@Repository
public class AccountDao {

	@Autowired
	private AccountMapper accountMapper;
	
	public Account getAccountByUserId(String userId) {
		return accountMapper.getAccountByUserId(userId);
	}

	public Account getAccountByUserIdAndPassword(String userId, String password) 
			throws DataAccessException {
		return accountMapper.getAccountByUserIdAndPassword(userId, password);
	}

	public void insertAccount(Account account) {
		accountMapper.insertAccount(account);
	}

	public void updateAccount(Account account) {
		accountMapper.updateAccount(account);
	}
	
	public void deleteAccount(Account account) {
		accountMapper.deleteAccount(account);
	}
	
	public boolean loginCheck(Account account) {
		return (accountMapper.getAccountByUserIdAndPassword(account.getUserId(), account.getPassword()) != null)? true : false;
	}
	
	public Account viewAccount(Account account) {
		return accountMapper.getAccountByUserIdAndPassword(account.getUserId(), account.getPassword());
	}
	
}