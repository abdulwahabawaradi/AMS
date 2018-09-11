package com.ams.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Complains")
public class Complain {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "complain_id")
	private Long complainId;

	@Column(name = "flat_no")
	private String flatNo;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "complain_date")
	private Date complainDate;

	@Column(name = "complain_title")
	private String complainTitle;

	@Column(name = "complain_description")
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

	public Date getComplainDate() {
		return complainDate;
	}

	public void setComplainDate(Date complainDate) {
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
		return "Complain [complainId=" + complainId + ", flatNo=" + flatNo + ", userName=" + userName
				+ ", complainDate=" + complainDate + ", complainTitle=" + complainTitle + ", complainDescription="
				+ complainDescription + "]";
	}

}
