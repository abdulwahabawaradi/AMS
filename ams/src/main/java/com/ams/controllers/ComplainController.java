package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.ComplainBean;
import com.ams.service.ComplainService;
import com.ams.service.FlatService;
import com.ams.utils.RequestUtil;


@Controller
@RequestMapping("/complain")
public class ComplainController {
	
	@Autowired
	ComplainService complainService;
	
	@Autowired
	FlatService flatService;
	
	
	@RequestMapping(value ="/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("complainBeans",complainService.findAll());
		return "view_complaints";
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createUser(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		ComplainBean complainBean = RequestUtil.createComplainRequest(request,"add");
		complainService.add(complainBean);
		return "add_complain";
	   }
	
	@RequestMapping(value = "/updateComplain/", method = RequestMethod.POST)
	public String updateComplain(ModelMap model, HttpServletRequest request){
		System.out.println("in update Maintenance controller");
		ComplainBean complainBean = RequestUtil.updateComplainRequest(request, "update");
		complainService.update(complainBean);
		return "view_complaints";
	}
	
	@RequestMapping(value = "/deleteComplain/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String complainId = request.getParameter("complain_id");
		complainService.delete(complainId);
		System.out.println("Complain Id :"+complainId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
		
	}
	
	@RequestMapping(value ="/getowner/", method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model ) {
		model.addAttribute("complainBeans",complainService.findAll());
		model.addAttribute("flatBeans",flatService.findAll());
		return "owner_view_complaints";
	}
	
	@RequestMapping(value ="/getownerflat/", method = RequestMethod.GET, produces = "application/json")
	public String findAll3(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "owner_add_complain";
	}
	
	@RequestMapping(value ="/getflat/", method = RequestMethod.GET, produces = "application/json")
	public String findAll2(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "add_complain";
	}
}
