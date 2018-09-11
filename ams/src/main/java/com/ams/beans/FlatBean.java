package com.ams.beans;

import org.springframework.stereotype.Component;

/**
 * Captures flat details
 * 
 * @author Rajshekhar
 *
 */
@Component
public class FlatBean {

	private Long flatId;

	private String flatNumber;

	private String wing;

	private String floorNumber;

	private String electricityMeter;

	private String flatArea;

	private String parkingDetails;

	private String furnishedType;

	private String gasMeter;
	
	private String ownerName;
	

	public Long getFlatId() {
		return flatId;
	}

	public void setFlatId(Long flatId) {
		this.flatId = flatId;
	}

	public String getFlatNumber() {
		return flatNumber;
	}

	public void setFlatNumber(String flatNumber) {
		this.flatNumber = flatNumber;
	}

	public String getWing() {
		return wing;
	}

	public void setWing(String wing) {
		this.wing = wing;
	}

	public String getFloorNumber() {
		return floorNumber;
	}

	public void setFloorNumber(String floorNumber) {
		this.floorNumber = floorNumber;
	}

	public String getElectricityMeter() {
		return electricityMeter;
	}

	public void setElectricityMeter(String electricityMeter) {
		this.electricityMeter = electricityMeter;
	}

	public String getFlatArea() {
		return flatArea;
	}

	public void setFlatArea(String flatArea) {
		this.flatArea = flatArea;
	}

	public String getParkingDetails() {
		return parkingDetails;
	}

	public void setParkingDetails(String parkingDetails) {
		this.parkingDetails = parkingDetails;
	}

	public String getFurnishedType() {
		return furnishedType;
	}

	public void setFurnishedType(String furnishedType) {
		this.furnishedType = furnishedType;
	}

	public String getGasMeter() {
		return gasMeter;
	}

	public void setGasMeter(String gasMeter) {
		this.gasMeter = gasMeter;
	}
	

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	

	@Override
	public String toString() {
		return "FlatBean [flatId=" + flatId + ", flatNumber=" + flatNumber + ", wing=" + wing + ", floorNumber="
				+ floorNumber + ", electricityMeter=" + electricityMeter + ", flatArea=" + flatArea
				+ ", parkingDetails=" + parkingDetails + ", furnishedType=" + furnishedType + ", gasMeter=" + gasMeter
				+ ", ownerName=" + ownerName + "]";
	}

	
	

}
