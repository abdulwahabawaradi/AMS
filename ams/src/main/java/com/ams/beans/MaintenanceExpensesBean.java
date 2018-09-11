package com.ams.beans;

import org.springframework.stereotype.Component;

/**
 * maintenance class differentiated based on role.
 * 
 * @author Rajshekhar
 *
 */

@Component
public class MaintenanceExpensesBean {

	private Long maintenanceId;

	private String date;

	private String monthYear;

	private String name;

	private String title;

	private String amount;

	private String description;

	public Long getMaintenanceId() {
		return maintenanceId;
	}

	public void setMaintenanceId(Long maintenanceId) {
		this.maintenanceId = maintenanceId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMonthYear() {
		return monthYear;
	}

	public void setMonthYear(String monthYear) {
		this.monthYear = monthYear;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "MaintenanceExpensesBean [maintenanceId=" + maintenanceId + ", date=" + date + ", monthYear=" + monthYear
				+ ", name=" + name + ", title=" + title + ", amount=" + amount + ", description=" + description + "]";
	}
	
	

	
}
