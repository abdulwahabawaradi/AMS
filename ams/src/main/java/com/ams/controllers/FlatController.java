package com.ams.controllers;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ams.beans.FlatBean;
import com.ams.beans.GenericDropdownBean;
import com.ams.service.FlatService;
import com.ams.service.GenericDropdownService;
import com.ams.service.UserService;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/flat")
public class FlatController {
	@Autowired
	FlatService flatService; 
	
	@Autowired
	UserService userService;
	
	@Autowired
	GenericDropdownService genericDropdownService;

	@RequestMapping(value ="/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "view_flats";
	}
	
	
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
public String create(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		FlatBean flatBean = RequestUtil.createFlatRequest(request,"add");
		flatService.add(flatBean);
		return "add_flat";
}
	
	@RequestMapping(value = "/updateFlat/", method = RequestMethod.POST)
	public String update(ModelMap model, HttpServletRequest request){	
		System.out.println("in update Flat method");
		FlatBean flatBean = RequestUtil.updateFlatRequest(request,"update");	
		System.out.println("Update Bean :" +flatBean);
		flatService.update(flatBean);
		return "view_flats";
	}
	
	
	@RequestMapping(value = "/deleteFlat/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String maintenanceId = request.getParameter("maintenance_id");
		flatService.delete(maintenanceId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
	}
	
	@RequestMapping(value ="/getnew/", method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model ) {
		model.addAttribute("userBeans",userService.findAll());
		model.addAttribute("genericDropdownBeans",genericDropdownService.findAll());
		return "add_flat";
	}
	
	@RequestMapping(value ="/getowner/", method = RequestMethod.GET, produces = "application/json")
	public String findAll2(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "owner_view_flats";
	}
	
	@RequestMapping(value = "/addowner/", method = RequestMethod.POST)
	public String create1(ModelMap model, HttpServletRequest request){
			System.out.println("In Controller");
			FlatBean flatBean = RequestUtil.createFlatRequest(request,"add");
			flatService.add(flatBean);
			return "owner_add_flat";
	}
	
	@RequestMapping(value ="/getgenericId/")
	public @ResponseBody GenericDropdownBean getflatById(ModelMap model,HttpServletRequest request)
	throws NumberFormatException,IllegalAccessException,InvocationTargetException{	
	String genericId = request.getParameter("name");
	GenericDropdownBean genericDropdownBean= genericDropdownService.findEntityById1(Long.parseLong(genericId));
		return genericDropdownBean;
	}
	
}