package com.ams.service;

import java.util.List;

import com.ams.beans.MaintenanceBean;

public interface MaintenanceService {
	
	public void add(MaintenanceBean maintenanceBean);

	public void update(MaintenanceBean maintenanceBean);

	public void delete(String maintenanceId);

	public List<MaintenanceBean> findAll();

	public MaintenanceBean findById(String maintenanceId);
	
}
