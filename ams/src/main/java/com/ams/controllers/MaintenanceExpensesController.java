package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.MaintenanceExpensesBean;
import com.ams.service.AdminService;
import com.ams.service.MaintenanceExpensesService;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/maintenanceExpenses")


public class MaintenanceExpensesController {
	
	@Autowired
	MaintenanceExpensesService maintenanceExpensesService;
	
	@Autowired
	AdminService adminService;

	@RequestMapping(value = "/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		System.out.println("in maintenence expenses GET");
		model.addAttribute("maintenanceExpensesBeans",maintenanceExpensesService.findAll());
		return "view_maintenanceExpenses";
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String addExpenses(ModelMap model , HttpServletRequest request) {
	   System.out.println("MaintenanceExpensesController");
	   MaintenanceExpensesBean maintenanceExpensesBean = RequestUtil.createMaintenanceExpensesRequest(request, "add");
	   maintenanceExpensesService.add(maintenanceExpensesBean);
	return "view_maintenanceExpenses";
	}
	
	@RequestMapping(value = "/update/", method = RequestMethod.POST)
	public String updateMaintenaceExpenses(ModelMap model, HttpServletRequest request){
		System.out.println("in update Maintenance controller");
		MaintenanceExpensesBean maintenanceExpensesBean = RequestUtil.updateMaintenanceExpensesRequest(request, "update");
		maintenanceExpensesService.update(maintenanceExpensesBean);
		return "view_maintenanceExpenses";
	}

	
	@RequestMapping(value = "/delete/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String maintenanceId = request.getParameter("maintenance_id");
		maintenanceExpensesService.delete(maintenanceId);
		System.out.println("maintenanceId :"+maintenanceId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
	}
	@RequestMapping(value = "/getownerexpenses/", method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model ) {
		System.out.println("in maintenence expenses GET");
		model.addAttribute("maintenanceExpensesBeans",maintenanceExpensesService.findAll());
		return "owner_view_maintenanceExpenses";
	}
	
	@RequestMapping(value = "/getOwnername/", method = RequestMethod.GET, produces = "application/json")
	public String findAll2(ModelMap model ) {
		System.out.println("in maintenence expenses GET");
		model.addAttribute("adminBeans",adminService.findAll());
		return "add_maintenanceExpenses";
	}
}


