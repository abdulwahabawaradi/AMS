package com.ams.entities;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "maintenance")
public class Maintenance {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "maintenance_id")
	private Long maintenanceId;

	@Column(name = "date_Maintenance")
	private Date dateOfMaintenance;

	@Column(name = "maintenance_month_year")
	private String month;

	@Column(name = "maintenance_Type")
	private String maintenanceType;

	@Column(name = "maintenancea_amount")
	private String maintenanceamount;

	@Column(name = "due_date")
	private Date duedate;

	@Column(name = "maintenance_details")
	private String maintenancedetails;

	public Long getMaintenanceId() {
		return maintenanceId;
	}

	public void setMaintenanceId(Long maintenanceId) {
		this.maintenanceId = maintenanceId;
	}

	public Date getDateOfMaintenance() {
		return dateOfMaintenance;
	}

	public void setDateOfMaintenance(Date dateOfMaintenance) {
		this.dateOfMaintenance = dateOfMaintenance;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}


	public String getMaintenanceType() {
		return maintenanceType;
	}

	public void setMaintenanceType(String maintenanceType) {
		this.maintenanceType = maintenanceType;
	}

	public String getMaintenanceamount() {
		return maintenanceamount;
	}

	public void setMaintenanceamount(String maintenanceamount) {
		this.maintenanceamount = maintenanceamount;
	}

	public Date getDuedate() {
		return duedate;
	}

	public void setDuedate(Date duedate) {
		this.duedate = duedate;
	}

	public String getMaintenancedetails() {
		return maintenancedetails;
	}

	public void setMaintenancedetails(String maintenancedetails) {
		this.maintenancedetails = maintenancedetails;
	}

	@Override
	public String toString() {
		return "Maintenance [maintenanceId=" + maintenanceId + ", dateOfMaintenance=" + dateOfMaintenance + ", month="
				+ month + ", maintenanceType=" + maintenanceType + ", maintenanceamount="
				+ maintenanceamount + ", duedate=" + duedate + ", maintenancedetails=" + maintenancedetails + "]";
	}

}
