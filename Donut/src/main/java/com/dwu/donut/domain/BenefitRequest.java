package com.dwu.donut.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class BenefitRequest {
	
	private int brId;
	private String userId;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private java.util.Date brDate;
	private char brMatchingState;
	private int donationId;
	private int brAlbumQuantity;
	private String brContent;
	
	public int getBrId() {
		return brId;
	}
	public void setBrId(int brId) {
		this.brId = brId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public java.util.Date getBrDate() {
		return brDate;
	}
	public void setBrDate(java.util.Date brDate) {
		this.brDate = brDate;
	}
	public char getBrMatchingState() {
		return brMatchingState;
	}
	public void setBrMatchingState(char brMatchingState) {
		this.brMatchingState = brMatchingState;
	}
	public int getDonationId() {
		return donationId;
	}
	public void setDonationId(int donationId) {
		this.donationId = donationId;
	}
	public int getBrAlbumQuantity() {
		return brAlbumQuantity;
	}
	public void setBrAlbumQuantity(int brAlbumQuantity) {
		this.brAlbumQuantity = brAlbumQuantity;
	}
	public String getBrContent() {
		return brContent;
	}
	public void setBrContent(String brContent) {
		this.brContent = brContent;
	}

}
