package com.ams.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.dao.DashboardDao;
import com.ams.service.DashboardService;

@Service
public class DashboardServiceImpl implements DashboardService{
	
	@Autowired
	DashboardDao dashboardDao;

	@Override
	public String getTotalAdmin() {
		return dashboardDao.totalAdmin();
	}

	@Override
	public String getTotalUser() {
		return dashboardDao.totalUser();
	}

	@Override
	public String getTotalComplain() {
		return dashboardDao.totalComplain();
	}

	@Override
	public String getTotalVisitor() {
		return dashboardDao.totalVisitor();
	}
	
	@Override
	public String getTotalFlat() {
		return dashboardDao.totalFlat();
	}
	
	

}
