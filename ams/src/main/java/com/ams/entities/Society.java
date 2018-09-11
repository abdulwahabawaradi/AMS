package com.ams.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "society")
public class Society {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "society_id")
	private Long societyId;
	
	@Column(name = "society_name")
	private String societyName;
	
	@Column(name = "society_address")
	private String societyAddress;
	
	@Column(name = "owner_name")
	private String ownerName;
	
	@Column(name = "owner_contact")
	private String ownerContact;
	
	@Column(name = "emailId")
	private String emailId;
	
	@Column(name = "no_of_wing")
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
		return "Society [societyId=" + societyId + ", societyName=" + societyName + ", societyAddress=" + societyAddress
				+ ", ownerName=" + ownerName + ", ownerContact=" + ownerContact + ", emailId=" + emailId + ", noOfWing="
				+ noOfWing + "]";
	}
	
	


}
