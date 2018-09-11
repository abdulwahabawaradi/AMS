package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.MaintenanceBean;
import com.ams.service.MaintenanceService;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/maintenance")

public class MaintenanceController {

	@Autowired
	MaintenanceService maintenanceService;

	@RequestMapping(value = "/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model) {
		model.addAttribute("maintenanceBeans", maintenanceService.findAll());
		return "view_maintenance";
	}

	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createMaintenance(ModelMap model, HttpServletRequest request) {
		System.out.println("MaintenanceController");
		MaintenanceBean maintenanceBean = RequestUtil.createMaintenanceRequest(request, "add");
		maintenanceService.add(maintenanceBean);
		return "add_maintenance";
	}

	@RequestMapping(value = "/updateMaintenance/", method = RequestMethod.POST)
	public String updateMaintenace(ModelMap model, HttpServletRequest request) {
		System.out.println("in update Maintenance controller");
		MaintenanceBean maintenanceBean = RequestUtil.updateMaintenanceRequest(request, "update");
		maintenanceService.update(maintenanceBean);
		return "view_maintenance";

	}

	@RequestMapping(value = "/deleteMaintenance/", method = RequestMethod.POST)
	public ResponseEntity<?> delete(HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String maintenanceId = request.getParameter("maintenance_id");
		maintenanceService.delete(maintenanceId);
		System.out.println("maintenanceId :" + maintenanceId);
		return new ResponseEntity<String>(HttpStatus.CREATED);

	}

	@RequestMapping(value = "/getOwner/", method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model) {
		model.addAttribute("maintenanceBeans", maintenanceService.findAll());
		return "owner_view_maintenance";
	}

}
