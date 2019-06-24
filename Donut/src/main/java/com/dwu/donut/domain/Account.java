package com.dwu.donut.domain;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Account {

	@NotEmpty
	@Size(min=5, max=16, message="Please set your ID at least 5 characters and less than 16 characters")
	private String userId;
	
	@NotEmpty
	@Size(min=8, max=16, message="Please set your PASSWORD at least 8 characters and less than 16 characters")
	private String password;
	
	@NotEmpty
	private String passwordCheck;
	
	@NotEmpty
	@Size(min=2)
	private String userName;
	
	@NotEmpty
	@Email
	private String email;
	
	@NotEmpty
	@Size(min=5, max=20)
	private String phone;
	
	@NotEmpty
	private String country;
	
	@NotEmpty
	@Size(min=5)
	private String address1;
	
	@NotEmpty
	@Size(min=5)
	private String address2;
	
	@NotEmpty
	@Size(min=5)
	private String zipCode;
	
	@NotEmpty
	private String userType;
	
	/*
	public boolean checkPassword(String input) {
		if (input.equals(password))
			return true;
		
		return false;
	}
	*/
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordCheck() {
		return passwordCheck;
	}
	public void setPasswordCheck(String passwordCheck) {
		this.passwordCheck = passwordCheck;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
}
