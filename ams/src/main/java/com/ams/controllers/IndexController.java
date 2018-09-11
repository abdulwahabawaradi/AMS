package com.ams.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String home(Map<String, Object> model) {
		System.out.println("In index controller");
		model.put("message", "HowToDoInJava Reader !!");
		return "index";
	}

	@RequestMapping(value = "/add_admin")
	public String add_admin() {
		return "add_admin";
	}

	@RequestMapping(value = { "/login" })
	public String login() {
		return "login";
	}

	@RequestMapping(value = { "/forget_pass" })
	public String forget_pass() {
		return "forget_pass";
	}

	@RequestMapping(value = "/dashboard")
	public String dashboard() {
		return "dashboard";
	}

	@RequestMapping(value = "/add_society")
	public String add_society() {
		return "add_society";
	}

	@RequestMapping(value = "/view_society")
	public String view_society() {
		return "view_society";
	}

	@RequestMapping(value = "/add_user")
	public String add_user() {
		return "add_user";
	}

	@RequestMapping(value = "/view_users")
	public String view_users() {
		return "view_users";
	}

	@RequestMapping(value = "/add_flat")
	public String add_flat() {
		return "add_flat";
	}

	@RequestMapping(value = "/view_flats")
	public String view_flats() {
		return "view_flats";
	}

	@RequestMapping(value = "/add_visitor")
	public String add_visitor() {
		return "add_visitor";
	}

	@RequestMapping(value = "/view_visitors")
	public String view_visitors() {
		return "view_visitors";
	}

	@RequestMapping(value = "/add_complain")
	public String add_complain() {
		return "add_complain";
	}

	@RequestMapping(value = "/view_complaints")
	public String view_complaints() {
		return "view_complaints";
	}

	@RequestMapping(value = "/add_document")
	public String add_document() {
		return "add_document";
	}

	@RequestMapping(value = "/view_document")
	public String view_document() {
		return "view_document";
	}

	@RequestMapping(value = "/add_maintenance")
	public String add_maintenance() {
		return "add_maintenance";
	}

	@RequestMapping(value = "/view_maintenance")
	public String view_maintenance() {
		return "view_maintenance";
	}

	@RequestMapping(value = "/view_maintenanceList")
	public String view_maintenanceList() {
		return "view_maintenanceList";
	}

	@RequestMapping(value = "/add_maintenanceExpenses")
	public String add_maintenanceExpenses() {
		return "add_maintenanceExpenses";
	}

	@RequestMapping(value = "/view_maintenanceExpenses")
	public String view_maintenanceExpenses() {
		return "view_maintenanceExpenses";
	}

	@RequestMapping(value = "/add_Dropdown")
	public String add_Dropdown() {
		return "add_Dropdown";
	}

	@RequestMapping(value = "/add_Fund")
	public String add_Fund() {
		return "add_Fund";
	}

	@RequestMapping(value = "/view_Fund")
	public String view_Fund() {
		return "view_Fund";
	}

	@RequestMapping(value = "/add_parking")
	public String add_parking() {
		return "add_parking";
	}

	@RequestMapping(value = "/view_parking")
	public String view_parking() {
		return "view_parking";
	}

	@RequestMapping(value = "/payment")
	public String payment() {
		return "payment";
	}

	@RequestMapping(value = { "/owner_login" })
	public String owner_login() {
		return "owner_login";
	}

	@RequestMapping(value = "/owner_dashboard")
	public String owner_dashboard() {
		return "owner_dashboard";
	}

	@RequestMapping(value = "/owner_view_maintenance")
	public String owner_view_maintenance() {
		return "owner_view_maintenance";
	}

	@RequestMapping(value = "/owner_view_maintenanceExpenses")
	public String owner_view_maintenanceExpenses() {
		return "owner_view_maintenanceExpenses";
	}

	@RequestMapping(value = "/owner_view_maintenanceList")
	public String owner_view_maintenanceList() {
		return "owner_view_maintenanceList";
	}

	@RequestMapping(value = "/owner_add_document")
	public String owner_add_document() {
		return "owner_add_document";
	}

	@RequestMapping(value = "/owner_view_document")
	public String owner_view_document() {
		return "owner_view_document";
	}

	@RequestMapping(value = "/owner_add_visitor")
	public String owner_add_visitor() {
		return "owner_add_visitor";
	}

	@RequestMapping(value = "/owner_view_visitors")
	public String owner_view_visitors() {
		return "owner_view_visitors";
	}

	@RequestMapping(value = "/owner_add_complain")
	public String owner_add_complain() {
		return "owner_add_complain";
	}

	@RequestMapping(value = "/owner_view_complaints")
	public String owner_view_complaints() {
		return "owner_view_complaints";
	}

	@RequestMapping(value = "/owner_view_society")
	public String owner_view_society() {
		return "owner_view_society";
	}

	@RequestMapping(value = "/owner_payment")
	public String owner_payment() {
		return "owner_payment";
	}
}