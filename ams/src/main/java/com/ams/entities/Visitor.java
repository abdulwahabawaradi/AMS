package com.ams.entities;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "visitors")
public class Visitor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "visitor_id")
	private Long visitorId;
	
	@Column(name = "visitor_date")
	private Date date;
	
	@Column(name = "visitor_name")
	private String visitorName;
	
	@Column(name = "visitor_number")
	private String visitorNumber;
	
	@Column(name = "visitor_address")
	private String address;
	
	@Column(name = "visitor_flat_Wing")
	private String flatWing;
	
	@Column(name = "visitor_flat_no")
	private String flatNo;
	
	@Column(name = "visitor_intime")
	private String inTime;
	
	@Column(name = "visitor_outtime")
	private String outTime;
	
	@Column(name = "visitor_id_number")
	private String idNumber;
	
	@Column(name = "visitor_details")
	private String visitorDetails;

	public Long getVisitorId() {
		return visitorId;
	}

	public void setVisitorId(Long visitorId) {
		this.visitorId = visitorId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getVisitorName() {
		return visitorName;
	}

	public void setVisitorName(String visitorName) {
		this.visitorName = visitorName;
	}

	public String getVisitorNumber() {
		return visitorNumber;
	}

	public void setVisitorNumber(String visitorNumber) {
		this.visitorNumber = visitorNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFlatWing() {
		return flatWing;
	}

	public void setFlatWing(String flatWing) {
		this.flatWing = flatWing;
	}

	public String getFlatNo() {
		return flatNo;
	}

	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public String getOutTime() {
		return outTime;
	}

	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}

	public String getIdNumber() {
		return idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}

	public String getVisitorDetails() {
		return visitorDetails;
	}

	public void setVisitorDetails(String visitorDetails) {
		this.visitorDetails = visitorDetails;
	}

	@Override
	public String toString() {
		return "VisitorBean [visitorId=" + visitorId + ", date=" + date + ", visitorName=" + visitorName
				+ ", visitorNumber=" + visitorNumber + ", address=" + address + ", flatWing=" + flatWing + ", flatNo="
				+ flatNo + ", inTime=" + inTime + ", outTime=" + outTime + ", idNumber=" + idNumber
				+ ", visitorDetails=" + visitorDetails + "]";
	}


}
