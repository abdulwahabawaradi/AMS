package com.ams.beans;

public class SocietyBean {

	private Long societyId;
	
	private String societyName;
	
	private String societyAddress;
	
	private String ownerName;
	
	private String ownerContact;
	
	private String emailId;
	
	private String noOfWing;

	public Long getSocietyId() {
		return societyId;
	}

	public void setSocietyId(Long societyId) {
		this.societyId = societyId;
	}

	public String getSocietyName() {
		return societyName;
	}

	public void setSocietyName(String societyName) {
		this.societyName = societyName;
	}

	public String getSocietyAddress() {
		return societyAddress;
	}

	public void setSocietyAddress(String societyAddress) {
		this.societyAddress = societyAddress;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getOwnerContact() {
		return ownerContact;
	}

	public void setOwnerContact(String ownerContact) {
		this.ownerContact = ownerContact;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getNoOfWing() {
		return noOfWing;
	}

	public void setNoOfWing(String noOfWing) {
		this.noOfWing = noOfWing;
	}

	@Override
	public String toString() {
		return "SocietyBean [societyId=" + societyId + ", societyName=" + societyName + ", societyAddress="
				+ societyAddress + ", ownerName=" + ownerName + ", ownerContact=" + ownerContact + ", emailId="
				+ emailId + ", noOfWing=" + noOfWing + "]";
	}
	
	
	
 }
