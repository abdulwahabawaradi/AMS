package com.ams.beans;

public class ParkingBean {

	private Long parkingId;
	
	private String slotNumber;
	
	private String ownerName;
	
	private String flatWing;
	
	private String flatNo;
	

	public Long getParkingId() {
		return parkingId;
	}

	public void setParkingId(Long parkingId) {
		this.parkingId = parkingId;
	}

	public String getSlotNumber() {
		return slotNumber;
	}

	public void setSlotNumber(String slotNumber) {
		this.slotNumber = slotNumber;
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

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	@Override
	public String toString() {
		return "ParkingBean [parkingId=" + parkingId + ", slotNumber=" + slotNumber + ", flatWing=" + flatWing
				+ ", flatNo=" + flatNo + ", ownerName=" + ownerName + "]";
	}
	
		
	}

