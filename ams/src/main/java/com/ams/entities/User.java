package com.ams.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User registration class differentiated based on role.
 * 
 * @author Rajshekhar
 *
 */
@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "user_id")
	private Long userId;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "user_address")
	private String userAddress;

	@Column(name = "user_dateofbirth")
	private Date userDateOfBirth;

	@Column(name = "user_email")
	private String userEmail;

	@Column(name = "user_password")
	private String password;

	@Column(name = "user_contact")
	private long usercontact;

	@Column(name = "user_secondarycontact")
	private long userSecondaryContact;

	@Column(name = "user_aadharnumber")
	private String userAadharNumber;

	@Column(name = "user_pancard")
	private String userPanCard;

	@Column(name = "user_role")
	private String userRole;

	@Column(name = "user_registrationdate")
	private Date userRegistrationDate;

	@Column(name = "end_date")
	private Date endDate;

	@Column(name = "country")
	private String country;

	@Column(name = "state")
	private String state;

	@Column(name = "city")
	private String city;

	@Column(name = "last_name")
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

	public Date getUserDateOfBirth() {
		return userDateOfBirth;
	}

	public void setUserDateOfBirth(Date userDateOfBirth) {
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

	public Date getUserRegistrationDate() {
		return userRegistrationDate;
	}

	public void setUserRegistrationDate(Date userRegistrationDate) {
		this.userRegistrationDate = userRegistrationDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
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
		return "User [userId=" + userId + ", userName=" + userName + ", userAddress=" + userAddress
				+ ", userDateOfBirth=" + userDateOfBirth + ", userEmail=" + userEmail + ", password=" + password
				+ ", usercontact=" + usercontact + ", userSecondaryContact=" + userSecondaryContact
				+ ", userAadharNumber=" + userAadharNumber + ", userPanCard=" + userPanCard + ", userRole=" + userRole
				+ ", userRegistrationDate=" + userRegistrationDate + ", endDate=" + endDate + ", country=" + country
				+ ", state=" + state + ", city=" + city + ", lastName=" + lastName + "]";
	}

}
