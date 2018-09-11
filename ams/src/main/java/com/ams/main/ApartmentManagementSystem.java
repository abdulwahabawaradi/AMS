package com.ams.main;

import org.springframework.context.annotation.Bean;

import com.ams.service.FlatService;
import com.ams.service.FundService;
import com.ams.service.GenericDropdownService;
import com.ams.service.MaintenanceExpensesService;
import com.ams.service.MaintenanceService;
import com.ams.service.ParkingService;
import com.ams.service.UserService;
import com.ams.service.VisitorService;
import com.ams.serviceimpl.FlatServiceImpl;
import com.ams.serviceimpl.FundServiceImpl;
import com.ams.serviceimpl.GenericDropdownServiceImpl;
import com.ams.serviceimpl.MaintenanceExpensesServiceImpl;
import com.ams.serviceimpl.MaintenanceServiceImpl;
import com.ams.serviceimpl.ParkingServiceImpl;
import com.ams.serviceimpl.UserServiceImpl;
import com.ams.serviceimpl.VisitorServiceImpl;

public class ApartmentManagementSystem {

	@Bean
	public FlatService getFlatService() {
		return new FlatServiceImpl();
	}

	@Bean
	public UserService getUserService() {
		return new UserServiceImpl();
	}

	@Bean
	public VisitorService getVisitorService() {
		return new VisitorServiceImpl();
	}

	@Bean 
	public MaintenanceService getMaintenanceService(){
		return new MaintenanceServiceImpl();
	}
	
	@Bean
	public MaintenanceExpensesService getMaintenanceExpensesService(){
		return new MaintenanceExpensesServiceImpl();
	}
		
	@Bean 
	public GenericDropdownService getGenericDropdownService(){
		return new GenericDropdownServiceImpl();
			
	}
	
	@Bean 
	public ParkingService getParkingService(){
		return new ParkingServiceImpl();
			
	}

	@Bean 
	public FundService getFundService(){
		return new FundServiceImpl();
			
	}
}
