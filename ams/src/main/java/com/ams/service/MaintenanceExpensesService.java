package com.ams.service;

import java.util.List;

import com.ams.beans.MaintenanceExpensesBean;

public interface MaintenanceExpensesService {
	
	public void add(MaintenanceExpensesBean maintenanceExpensesBean);

	public void update(MaintenanceExpensesBean maintenanceExpensesBean);

	
	public List<MaintenanceExpensesBean> findAll();

	public MaintenanceExpensesBean findById(String maintenanceId);

	void delete(String maintenance_Id);

}
