package com.ams.entities;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Captures MaintenanceExpenses details
 * @author Rajshekhar
 *
 */
@Entity
@Table(name = "maintenanceexpenses")
public class MaintenanceExpenses {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "maintenance_id")
	private Long maintenanceId;

	@Column(name = "date")
	private Date date;

	@Column(name = "monthYear")
	private String monthYear;

	@Column(name = "name")
	private String name;

	@Column(name = "title")
	private String title;

	@Column(name = "amount")
	private String amount;
	
	@Column(name = "description")
	private String description;

	public Long getMaintenanceId() {
		return maintenanceId;
	}

	public void setMaintenanceId(Long maintenanceId) {
		this.maintenanceId = maintenanceId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
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
		return "MaintenanceExpenses [maintenanceId=" + maintenanceId + ", date=" + date + ", monthYear=" + monthYear
				+ ", name=" + name + ", title=" + title + ", amount=" + amount + ", description=" + description + "]";
	}
	
	
	}
