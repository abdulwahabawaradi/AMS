package com.ams.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "generic_dropdowns")
public class GenericDropdown {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	@Column(name = "gener_id")
	private Long genericId;

	@Column(name = "flat_wing")
	private String flatWing;

	@Column(name = "flat_floor")
	private String flatFloor;

	@Column(name = "flat_no")
	private String flatNo;

	public Long getGenericId() {
		return genericId;
	}

	public void setGenericId(Long genericId) {
		this.genericId = genericId;
	}

	public String getFlatWing() {
		return flatWing;
	}

	public void setFlatWing(String flatWing) {
		this.flatWing = flatWing;
	}

	public String getFlatFloor() {
		return flatFloor;
	}

	public void setFlatFloor(String flatFloor) {
		this.flatFloor = flatFloor;
	}

	public String getFlatNo() {
		return flatNo;
	}

	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}

	@Override
	public String toString() {
		return "GenericDropdown [genericId=" + genericId + ", flatWing=" + flatWing + ", flatFloor=" + flatFloor
				+ ", flatNo=" + flatNo + "]";
	}

}
