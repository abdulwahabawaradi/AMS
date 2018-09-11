package com.ams.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.service.MaintenanceListService;

@Controller
@RequestMapping("/maintenancelist")

public class MaintenanceListController {
	
	@Autowired
	MaintenanceListService maintenanceListService;
	
	@RequestMapping(value ="/getList/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("maintenanceListBeans",maintenanceListService.getMaintenanceList());
		return "view_maintenanceList";
	}
	
	@RequestMapping(value ="/getList2/", method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model ) {
		model.addAttribute("maintenanceListBeans",maintenanceListService.getMaintenanceList());
		return "owner_view_maintenanceList";
	}

}
