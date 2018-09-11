package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.MaintenanceExpensesBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Maintenance;
import com.ams.entities.MaintenanceExpenses;
import com.ams.service.MaintenanceExpensesService;
import com.ams.utils.BeanUtils;
@Service
public class MaintenanceExpensesServiceImpl implements MaintenanceExpensesService {
	
	@Autowired
	private GenericDao<MaintenanceExpenses> genericDao;
	
	@Override
	public void add(MaintenanceExpensesBean maintenanceExpensesBean) {
		MaintenanceExpenses maintenanceExpenses = BeanUtils.populateMaintenanceExpenses(maintenanceExpensesBean);
		genericDao.addEntity(maintenanceExpenses);
	}

	@Override
	public void update(MaintenanceExpensesBean maintenanceExpensesBean) {
		MaintenanceExpenses maintenanceExpenses = BeanUtils.populateMaintenanceExpenses(maintenanceExpensesBean);
		genericDao.updateEntity(maintenanceExpenses);
	}

	
	@Override
	public List<MaintenanceExpensesBean> findAll() {
        List<MaintenanceExpenses> maintenanceExpenses = genericDao.findAll(MaintenanceExpenses.class);
		return BeanUtils.populateMaintenanceExpensesBeanList(maintenanceExpenses);
	}

	@Override
	public MaintenanceExpensesBean findById(String maintenanceId) {
		MaintenanceExpenses maintenanceExpenses = genericDao.findEntityById(MaintenanceExpenses.class, maintenanceId);
		return BeanUtils.populateMaintenanceExpensesBean(maintenanceExpenses);
	}

	@Override
	public void delete(String maintenance_Id) {
		genericDao.deleteEntity(Long.valueOf(maintenance_Id), MaintenanceExpenses.class);		
	}

}
