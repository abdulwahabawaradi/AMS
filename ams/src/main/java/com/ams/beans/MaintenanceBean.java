package com.ams.beans;

public class MaintenanceBean {

	private Long maintenanceId;

	private String dateOfMaintenance;

	private String month;

	private String maintenanceType;

	private String maintenanceamount;

	private String duedate;

	private String maintenancedetails;

	public Long getMaintenanceId() {
		return maintenanceId;
	}

	public void setMaintenanceId(Long maintenanceId) {
		this.maintenanceId = maintenanceId;
	}

	public String getDateOfMaintenance() {
		return dateOfMaintenance;
	}

	public void setDateOfMaintenance(String dateOfMaintenance) {
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

	public String getDuedate() {
		return duedate;
	}

	public void setDuedate(String duedate) {
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
		return "MaintenanceBean [maintenanceId=" + maintenanceId + ", dateOfMaintenance=" + dateOfMaintenance
				+ ", month=" + month + ", maintenanceType=" + maintenanceType + ", maintenanceamount="
				+ maintenanceamount + ", duedate=" + duedate + ", maintenancedetails=" + maintenancedetails + "]";
	}

}
