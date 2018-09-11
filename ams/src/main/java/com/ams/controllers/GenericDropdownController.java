package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ams.beans.GenericDropdownBean;
import com.ams.service.GenericDropdownService;
import com.ams.utils.RequestUtil;

@RestController
@RequestMapping("/generic")
public class GenericDropdownController {
	@Autowired
	GenericDropdownService genericDropdownService; 

	@RequestMapping(value ="/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("genericDropdownBeans",genericDropdownService.findAll());
		return "add_Dropdown";
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String create(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		GenericDropdownBean genericDropdownBean = RequestUtil.createGenericDropdownRequest(request,"add");
		genericDropdownService.add(genericDropdownBean);
		return "add_Dropdown";
	   }
	
	
	@RequestMapping(value = "/update/", method = RequestMethod.POST)
	public ResponseEntity<?> update(@RequestBody GenericDropdownBean genericDropdownBean) {
		genericDropdownService.update(genericDropdownBean);
		return new ResponseEntity<String>(HttpStatus.CREATED);
	}

	
	@RequestMapping(value = "/delete/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String maintenanceId = request.getParameter("maintenance_id");
	genericDropdownService.delete(maintenanceId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
	}
	
	

}
