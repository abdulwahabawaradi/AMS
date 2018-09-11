package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.SocietyBean;
import com.ams.service.SocietyService;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/society")
public class SocietyController {
	@Autowired
	SocietyService societyService;
	
	
	@RequestMapping(value ="/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("societyBeans",societyService.findAll());
		return "view_society";
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createUser(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		SocietyBean societyBean = RequestUtil.createSocietyRequest(request,"add");
		societyService.add(societyBean);
		return "add_society";
	   }
	
	@RequestMapping(value = "/update/", method = RequestMethod.POST)
	public String updateComplain(ModelMap model, HttpServletRequest request){
		System.out.println("in update Maintenance controller");
		SocietyBean societyBean = RequestUtil.updateSocietyRequest(request, "update");
		societyService.update(societyBean);
		return "view_complaints";
	}
	
	@RequestMapping(value = "/delete/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete Society controller");
		String societyId = request.getParameter("complain_id");
		societyService.delete(societyId);
		System.out.println("Society Id :"+societyId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
		
	}
	
	@RequestMapping(value ="/getowner/", method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model ) {
		model.addAttribute("societyBeans",societyService.findAll());
		return "owner_view_society";
	}


}
