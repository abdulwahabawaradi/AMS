package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.AdminBean;
import com.ams.service.AdminService;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService; 

	
	@RequestMapping(value ="/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("adminBeans",adminService.findAll());
		return "view_admins";
	}


	@RequestMapping(value = "/find/{id}", method = RequestMethod.GET)
	public ResponseEntity<AdminBean> findById(String id) {
		return new ResponseEntity<AdminBean>(adminService.findById(id), HttpStatus.OK);
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createAdmin(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		AdminBean adminBean = RequestUtil.createAdminRequest(request,"add");
		adminService.add(adminBean);
		return "add_admin";
	}
	
	@RequestMapping(value = "/update/", method = RequestMethod.POST)
	public String updateAdmin(ModelMap model, HttpServletRequest request){	
		System.out.println("in update Admin method");
		AdminBean adminBean = RequestUtil.updateAdminRequest(request,"update");	
		System.out.println("Update Bean :" +adminBean);
		adminService.update(adminBean);
		return "view_admin";
	}

	@RequestMapping(value = "/delete/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String adminId = request.getParameter("admin_id");
		adminService.delete(adminId);
		System.out.println("maintenanceId :"+adminId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
		
	}

}
