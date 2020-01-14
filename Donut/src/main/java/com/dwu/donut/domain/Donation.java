package com.dwu.donut.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Donation {

	private int donationId;
	private String userId;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private java.util.Date donationDate;
	private char donationMatchingState;
	private int albumId;
	private int donationAlbumQuantity;
	private String donationContent;
	private Album album;
	
	public int getDonationId() {
		return donationId;
	}
	public void setDonationId(int donationId) {
		this.donationId = donationId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getDonationDate() {
		return donationDate;
	}
	public void setDonationDate(Date donationDate) {
		this.donationDate = donationDate;
	}
	public char getDonationMatchingState() {
		return donationMatchingState;
	}
	public void setDonationMatchingState(char donationMatchingState) {
		this.donationMatchingState = donationMatchingState;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public int getDonationAlbumQuantity() {
		return donationAlbumQuantity;
	}
	public void setDonationAlbumQuantity(int donationAlbumQuantity) {
		this.donationAlbumQuantity = donationAlbumQuantity;
	}
	public String getDonationContent() {
		return donationContent;
	}
	public void setDonationContent(String donationContent) {
		this.donationContent = donationContent;
	}
	public Album getAlbum() {
		return album;
	}
	public void setAlbum(Album album) {
		this.album = album;
	}
	
}
