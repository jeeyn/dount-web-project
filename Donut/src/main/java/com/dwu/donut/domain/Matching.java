package com.dwu.donut.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Matching {
	
	private int matchingId;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date matchingDate;
	private String donationUserId;
	private String benefitUserId;
	private char matchingType;
	private int postId;
	private int requestId;
	private int albumId;
	private int matchingAlbumQuantity;
	
	public int getMatchingId() {
		return matchingId;
	}
	public void setMatchingId(int matchingId) {
		this.matchingId = matchingId;
	}
	public Date getMatchingDate() {
		return matchingDate;
	}
	@DateTimeFormat(pattern="yyyy/MM/dd")
	public void setMatchingDate(Date matchingDate) {
		this.matchingDate = matchingDate;
	}
	public String getDonationUserId() {
		return donationUserId;
	}
	public void setDonationUserId(String donationUserId) {
		this.donationUserId = donationUserId;
	}
	public String getBenefitUserId() {
		return benefitUserId;
	}
	public void setBenefitUserId(String benefitUserId) {
		this.benefitUserId = benefitUserId;
	}
	public char getMatchingType() {
		return matchingType;
	}
	public void setMatchingType(char matchingType) {
		this.matchingType = matchingType;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public int getMatchingAlbumQuantity() {
		return matchingAlbumQuantity;
	}
	public void setMatchingAlbumQuantity(int matchingAlbumQuantity) {
		this.matchingAlbumQuantity = matchingAlbumQuantity;
	}

}
