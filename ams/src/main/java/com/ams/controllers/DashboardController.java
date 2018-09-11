package com.ams.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.service.DashboardService;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {

	@Autowired
	DashboardService dashboardService;
	
	@RequestMapping(value = "/get/", method = RequestMethod.GET)
	public String dashboard(ModelMap model){
		model.addAttribute("totalAdmin", dashboardService.getTotalAdmin());
		model.addAttribute("totalUser",dashboardService.getTotalUser());
		model.addAttribute("totalComplian", dashboardService.getTotalComplain());
		model.addAttribute("totalVisitor", dashboardService.getTotalVisitor());
		model.addAttribute("totalFlat", dashboardService.getTotalFlat());
		return "dashboard";
	}
	
	@RequestMapping(value = "/getOwner/", method = RequestMethod.GET)
	public String ownerdashboard(ModelMap model){
		model.addAttribute("totalAdmin", dashboardService.getTotalAdmin());
		model.addAttribute("totalUser",dashboardService.getTotalUser());
		model.addAttribute("totalComplian", dashboardService.getTotalComplain());
		model.addAttribute("totalVisitor", dashboardService.getTotalVisitor());
		model.addAttribute("totalFlat", dashboardService.getTotalFlat());
		return "owner_dashboard";
	}
}
