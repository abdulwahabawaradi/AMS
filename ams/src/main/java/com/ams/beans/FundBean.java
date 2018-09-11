package com.ams.beans;

import org.springframework.stereotype.Component;

@Component
public class FundBean {

	private Long fundId;
	
	private String flatNo;
	
	private String ownerName;
	
	private String date;
	
	private String monthYear;

	private String paymentMode;
	
	private String amount;
	
	private String description;

	public Long getFundId() {
		return fundId;
	}

	public void setFundId(Long fundId) {
		this.fundId = fundId;
	}

	public String getFlatNo() {
		return flatNo;
	}

	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMonthYear() {
		return monthYear;
	}

	public void setMonthYear(String monthYear) {
		this.monthYear = monthYear;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "FundBean [fundId=" + fundId + ", flatNo=" + flatNo + ", ownerName=" + ownerName + ", date=" + date
				+ ", monthYear=" + monthYear + ", paymentMode=" + paymentMode + ", amount=" + amount + ", description="
				+ description + "]";
	}
	
	
	
}
