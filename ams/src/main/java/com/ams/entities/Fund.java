package com.ams.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "funds")
public class Fund {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "fund_id")
	private Long fundId;

	@Column(name = "flat_no")
	private String flatNo;

	@Column(name = "owner_name")
	private String ownerName;

	@Column(name = "fund_date")
	private Date date;

	@Column(name = "month_year")
	private String monthYear;

	@Column(name = "payment_mode")
	private String paymentMode;

	@Column(name = "fund_amount")
	private String amount;

	@Column(name = "fund_description")
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
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
		return "Fund [fundId=" + fundId + ", flatNo=" + flatNo + ", ownerName=" + ownerName + ", date=" + date
				+ ", monthYear=" + monthYear + ", paymentMode=" + paymentMode + ", amount=" + amount + ", description="
				+ description + "]";
	}

}
