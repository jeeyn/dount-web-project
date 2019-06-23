package com.dwu.donut.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class Benefit {

	private int benefitId;
	private String userId;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private java.util.Date benefitDate;
	private char benefitMatchingState;
	private int albumId;
	private int benefitAlbumQuantity;
	private String benefitContent;
	private Album album;
	
	public int getBenefitId() {
		return benefitId;
	}
	public void setBenefitId(int benefitId) {
		this.benefitId = benefitId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public java.util.Date getBenefitDate() {
		return benefitDate;
	}
	@DateTimeFormat(pattern="yyyy/MM/dd")
	public void setBenefitDate(java.util.Date benefitDate) {
		this.benefitDate = benefitDate;
	}
	public char getBenefitMatchingState() {
		return benefitMatchingState;
	}
	public void setBenefitMatchingState(char benefitMatchingState) {
		this.benefitMatchingState = benefitMatchingState;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public int getBenefitAlbumQuantity() {
		return benefitAlbumQuantity;
	}
	public void setBenefitAlbumQuantity(int benefitAlbumQuantity) {
		this.benefitAlbumQuantity = benefitAlbumQuantity;
	}
	public String getBenefitContent() {
		return benefitContent;
	}
	public void setBenefitContent(String benefitContent) {
		this.benefitContent = benefitContent;
	}
	public Album getAlbum() {
		return album;
	}
	public void setAlbum(Album album) {
		this.album = album;
	}
	
}
