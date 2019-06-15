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
	
	public Account getAccount(String userId) throws DataAccessException {
		return accountMapper.getAccountByUserId(userId);
	}

	public Account getAccount(String userId, String password) 
			throws DataAccessException {
		return accountMapper.getAccountByUserIdAndPassword(userId, password);
	}

	public void insertAccount(Account account) throws DataAccessException {
		accountMapper.insertAccount(account);
	}

	public void updateAccount(Account account) throws DataAccessException {
		accountMapper.updateAccount(account);
	}
	
	public void deleteAccount(Account account) throws DataAccessException {
		accountMapper.deleteAccount(account);
	}
}