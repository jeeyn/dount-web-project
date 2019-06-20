package com.dwu.donut.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.AccountDao;
import com.dwu.donut.domain.Account;

@Service
public class AccountService {
	
	@Autowired
	AccountDao accountDao;
	
	// 1. 회원 로그인 여부 체크
	public boolean loginCheck(Account account, HttpSession session) {
		boolean loginResult = accountDao.loginCheck(account);
		
		if (loginResult) { // true일 경우 세션에 등록
			session.setAttribute("userId", account.getUserId());
			session.setAttribute("userType", account.getUserType());
		}
		
		return loginResult;
	}
	
	// 2. 회원 로그인 정보
	public Account ViewAccount(Account account) {
		return accountDao.viewAccount(account);
	}
	
	// 3. 회원 로그아웃
	public void logout(HttpSession session) {
		// 세선 정보를 초기화
		session.invalidate();
	}

}
