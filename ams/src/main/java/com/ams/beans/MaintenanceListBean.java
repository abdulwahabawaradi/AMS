package com.ams.beans;

public class MaintenanceListBean {

	private String owner_name;

	private String flat_number;

	private String maintenance_month_year;

	private String flat_area;

	private String maintenancea_amount;

	private String total_maintenance;

	public String getOwner_name() {
		return owner_name;
	}

	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}

	public String getFlat_number() {
		return flat_number;
	}

	public void setFlat_number(String flat_number) {
		this.flat_number = flat_number;
	}

	public String getMaintenance_month_year() {
		return maintenance_month_year;
	}

	public void setMaintenance_month_year(String maintenance_month_year) {
		this.maintenance_month_year = maintenance_month_year;
	}

	public String getFlat_area() {
		return flat_area;
	}

	public void setFlat_area(String flat_area) {
		this.flat_area = flat_area;
	}

	public String getMaintenancea_amount() {
		return maintenancea_amount;
	}

	public void setMaintenancea_amount(String maintenancea_amount) {
		this.maintenancea_amount = maintenancea_amount;
	}

	public String getTotal_maintenance() {
		return total_maintenance;
	}

	public void setTotal_maintenance(String total_maintenance) {
		this.total_maintenance = total_maintenance;
	}

	@Override
	public String toString() {
		return "MaintenanceListBean [owner_name=" + owner_name + ", flat_number=" + flat_number
				+ ", maintenance_month_year=" + maintenance_month_year + ", flat_area=" + flat_area
				+ ", maintenancea_amount=" + maintenancea_amount + ", total_maintenance=" + total_maintenance + "]";
	}

}
