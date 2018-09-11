package com.ams.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.MaintenanceBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Maintenance;
import com.ams.service.MaintenanceService;
import com.ams.utils.BeanUtils;
@Service
public class MaintenanceServiceImpl implements MaintenanceService {
	
	@Autowired
	private GenericDao<Maintenance> genericDao;
	
	@Override
	public void add(MaintenanceBean maintenanceBean) {
		Maintenance maintenance = BeanUtils.populateMaintenance(maintenanceBean);
		genericDao.addEntity(maintenance);
	}

	@Override
	public void update(MaintenanceBean maintenanceBean) {
		Maintenance maintenance = BeanUtils.populateMaintenance(maintenanceBean);
		genericDao.updateEntity(maintenance);
	}

	@Override
	public List<MaintenanceBean> findAll() {
        List<Maintenance> maintenance = genericDao.findAll(Maintenance.class);
		return BeanUtils.populateMaintenanceBeanList(maintenance);
	}

	@Override
	public MaintenanceBean findById(String maintenanceId) {
		Maintenance maintenance = genericDao.findEntityById(Maintenance.class, maintenanceId);
		return BeanUtils.populateMaintenanceBean(maintenance);
	}

	@Override
	public void delete(String maintenanceId) {
		genericDao.deleteEntity(Long.valueOf(maintenanceId), Maintenance.class);
	}
}
