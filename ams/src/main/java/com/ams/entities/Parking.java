package com.ams.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "parking")
public class Parking {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "parking_id")
	private Long parkingId;
	
	@Column(name = "slot_number")
	private String slotNumber;
	
	@Column(name = "flat_wing")
	private String flatWing;
	
	@Column(name = "flat_no")
	private String flatNo;
	
	@Column(name = "owner_name")
	private String ownerName;

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
		return "Parking [parkingId=" + parkingId + ", slotNumber=" + slotNumber + ", flatWing=" + flatWing + ", flatNo="
				+ flatNo + ", ownerName=" + ownerName + "]";
	}
	
	
	

}
