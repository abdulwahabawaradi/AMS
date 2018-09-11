package com.ams.beans;

import org.springframework.stereotype.Component;

/**
 * User registration class differentiated based on role.
 * 
 * @author Rajshekhar
 *
 */
@Component
public class UserBean {

	private Long userId;

	private String userName;

	private String userAddress;

	private String userDateOfBirth;

	private String userEmail;

	private long usercontact;

	private long userSecondaryContact;

	private String userAadharNumber;

	private String userPanCard;

	private String userRole;

	private String userRegistrationDate;

	private String endDate;

	private String country;

	private String state;

	private String city;

	private String password;

	private String lastName;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserDateOfBirth() {
		return userDateOfBirth;
	}

	public void setUserDateOfBirth(String userDateOfBirth) {
		this.userDateOfBirth = userDateOfBirth;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public long getUsercontact() {
		return usercontact;
	}

	public void setUsercontact(long usercontact) {
		this.usercontact = usercontact;
	}

	public long getUserSecondaryContact() {
		return userSecondaryContact;
	}

	public void setUserSecondaryContact(long userSecondaryContact) {
		this.userSecondaryContact = userSecondaryContact;
	}

	public String getUserAadharNumber() {
		return userAadharNumber;
	}

	public void setUserAadharNumber(String userAadharNumber) {
		this.userAadharNumber = userAadharNumber;
	}

	public String getUserPanCard() {
		return userPanCard;
	}

	public void setUserPanCard(String userPanCard) {
		this.userPanCard = userPanCard;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getUserRegistrationDate() {
		return userRegistrationDate;
	}

	public void setUserRegistrationDate(String userRegistrationDate) {
		this.userRegistrationDate = userRegistrationDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserBean [userId=" + userId + ", userName=" + userName + ", userAddress=" + userAddress
				+ ", userDateOfBirth=" + userDateOfBirth + ", userEmail=" + userEmail + ", usercontact=" + usercontact
				+ ", userSecondaryContact=" + userSecondaryContact + ", userAadharNumber=" + userAadharNumber
				+ ", userPanCard=" + userPanCard + ", userRole=" + userRole + ", userRegistrationDate="
				+ userRegistrationDate + ", endDate=" + endDate + ", country=" + country + ", state=" + state
				+ ", city=" + city + ", password=" + password + ", lastName=" + lastName + "]";
	}

}
