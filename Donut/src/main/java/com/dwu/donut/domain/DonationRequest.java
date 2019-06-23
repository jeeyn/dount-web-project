package com.dwu.donut.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class DonationRequest {
	
	private int drId;
	private String userId;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private java.util.Date drDate;
	private char drMatchingState;
	private int benefitId;
	private int drAlbumQuantity;
	private String drContent;
	private Album album;
	
	public int getDrId() {
		return drId;
	}
	public void setDrId(int drId) {
		this.drId = drId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public java.util.Date getDrDate() {
		return drDate;
	}
	@DateTimeFormat(pattern="yyyy/MM/dd")
	public void setDrDate(java.util.Date drDate) {
		this.drDate = drDate;
	}
	public char getDrMatchingState() {
		return drMatchingState;
	}
	public void setDrMatchingState(char drMatchingState) {
		this.drMatchingState = drMatchingState;
	}
	public int getBenefitId() {
		return benefitId;
	}
	public void setBenefitId(int benefitId) {
		this.benefitId = benefitId;
	}
	public int getDrAlbumQuantity() {
		return drAlbumQuantity;
	}
	public void setDrAlbumQuantity(int drAlbumQuantity) {
		this.drAlbumQuantity = drAlbumQuantity;
	}
	public String getDrContent() {
		return drContent;
	}
	public void setDrContent(String drContent) {
		this.drContent = drContent;
	}
	public Album getAlbum() {
		return album;
	}
	public void setAlbum(Album album) {
		this.album = album;
	}

}
