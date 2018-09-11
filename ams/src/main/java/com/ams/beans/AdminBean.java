package com.ams.beans;

public class AdminBean {

	private Long adminId;

	private String firstName;

	private String lastName;

	private String email;

	private String password;

	private String country;

	private String state;

	private String city;

	private String address;

	private String dateOfBirth;

	private long contact;

	private long secondaryContact;

	private String aadharNumber;

	private String panCard;

	public Long getAdminId() {
		return adminId;
	}

	public void setAdminId(Long adminId) {
		this.adminId = adminId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public long getSecondaryContact() {
		return secondaryContact;
	}

	public void setSecondaryContact(long secondaryContact) {
		this.secondaryContact = secondaryContact;
	}

	public String getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public String getPanCard() {
		return panCard;
	}

	public void setPanCard(String panCard) {
		this.panCard = panCard;
	}

	@Override
	public String toString() {
		return "AdminBean [adminId=" + adminId + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", password=" + password + ", country=" + country + ", state=" + state + ", city=" + city
				+ ", address=" + address + ", dateOfBirth=" + dateOfBirth + ", contact=" + contact
				+ ", secondaryContact=" + secondaryContact + ", aadharNumber=" + aadharNumber + ", panCard=" + panCard
				+ "]";
	}

}
