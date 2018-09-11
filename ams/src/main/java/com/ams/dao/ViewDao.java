package com.ams.dao;

import java.util.List;

import com.ams.beans.MaintenanceListBean;
import com.ams.entities.Flat;

public interface ViewDao {
	
	public List<MaintenanceListBean> getMaintenanceList();
	
}
