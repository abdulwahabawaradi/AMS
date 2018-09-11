package com.ams.beans;

import org.springframework.stereotype.Component;

@Component
public class ComplainBean {

	private Long complainId;

	private String flatNo;

	private String userName;

	private String complainDate;

	private String complainTitle;

	private String complainDescription;

	public Long getComplainId() {
		return complainId;
	}

	public void setComplainId(Long complainId) {
		this.complainId = complainId;
	}

	public String getFlatNo() {
		return flatNo;
	}

	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getComplainDate() {
		return complainDate;
	}

	public void setComplainDate(String complainDate) {
		this.complainDate = complainDate;
	}

	public String getComplainTitle() {
		return complainTitle;
	}

	public void setComplainTitle(String complainTitle) {
		this.complainTitle = complainTitle;
	}

	public String getComplainDescription() {
		return complainDescription;
	}

	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}

	@Override
	public String toString() {
		return "ComplainBean [complainId=" + complainId + ", flatNo=" + flatNo + ", userName=" + userName
				+ ", complainDate=" + complainDate + ", complainTitle=" + complainTitle + ", complainDescription="
				+ complainDescription + "]";
	}

}
