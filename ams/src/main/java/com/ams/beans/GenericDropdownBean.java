package com.ams.beans;

public class GenericDropdownBean {

	private Long genericId;

	private String flatWing;

	private String flatFloor;

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
		return "GenericDropdownBean [genericId=" + genericId + ", flatWing=" + flatWing + ", flatFloor=" + flatFloor
				+ ", flatNo=" + flatNo + "]";
	}

}
