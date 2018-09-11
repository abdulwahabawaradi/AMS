package com.ams.beans;

import org.springframework.stereotype.Component;

@Component
public class VisitorBean {

	private Long visitorId;
	
	private String date;
	
	private String visitorName;
	
	private String visitorNumber;
	
	private String address;
	
	private String flatWing;
	
	private String flatNo;
	
	private String inTime;
	
	private String outTime;
	
	private String idNumber;
	
	private String visitorDetails;

	public Long getVisitorId() {
		return visitorId;
	}

	public void setVisitorId(Long visitorId) {
		this.visitorId = visitorId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
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
