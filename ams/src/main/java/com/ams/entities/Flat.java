package com.ams.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Captures flat details
 * 
 * @author Rajshekhar
 *
 */
@Entity
@Table(name = "flats")
public class Flat {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "flat_id")
	private Long flatId;

	@Column(name = "flat_number")
	private String flatNumber;

	@Column(name = "wing")
	private String wing;

	@Column(name = "floor_number")
	private String floorNumber;

	@Column(name = "electricity_meter")
	private String electricityMeter;

	@Column(name = "flat_area")
	private String flatArea;

	@Column(name = "parking_details")
	private String parkingDetails;

	@Column(name = "furnished_type")
	private String furnishedType;

	@Column(name = "gas_meter")
	private String gasMeter;

	@Column(name = "owner_name")
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
		return "Flat [flatId=" + flatId + ", flatNumber=" + flatNumber + ", wing=" + wing + ", floorNumber="
				+ floorNumber + ", electricityMeter=" + electricityMeter + ", flatArea=" + flatArea
				+ ", parkingDetails=" + parkingDetails + ", furnishedType=" + furnishedType + ", gasMeter=" + gasMeter
				+ ", ownerName=" + ownerName + "]";
	}

}
