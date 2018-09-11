package com.ams.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.VisitorBean;
import com.ams.service.FlatService;
import com.ams.service.VisitorService;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/visitor")
public class VisitorController {

	@Autowired
	VisitorService visitorService;
	
	@Autowired
	FlatService flatService;
	
	@RequestMapping(value="/get",method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("visitorBeans",visitorService.findAll());
		return "view_visitors";
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createUser(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		VisitorBean visitorBean = RequestUtil.createVisitorRequest(request,"add");
		visitorService.add(visitorBean);
		return "view_visitors";
	}
	
	@RequestMapping(value = "/update/", method = RequestMethod.POST)
	public String updateMaintenace(ModelMap model, HttpServletRequest request){
		System.out.println("in update Maintenance controller");
		VisitorBean visitorBean = RequestUtil.updateVisitorRequest(request, "update");
		visitorService.update(visitorBean);
		return "view_visitors";
		
	}
	
	
	@RequestMapping(value = "/deleteVisitor/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("Delete Visitor controller");
		String visitorId = request.getParameter("visitor_id");
		System.out.println("visitorId :"+visitorId);
		visitorService.delete(visitorId);
		response.sendRedirect("/ams/view_visitors");
		return new ResponseEntity<String>(HttpStatus.CREATED);
	}
	
	@RequestMapping(value="/getflat/",method = RequestMethod.GET, produces = "application/json")
	public String findAll2(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "add_visitor";
	}
	
	@RequestMapping(value="/getowner",method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model ) {
		model.addAttribute("visitorBeans",visitorService.findAll());
		model.addAttribute("flatBeans",flatService.findAll());
		return "owner_view_visitors";
	}
	
	@RequestMapping(value="/getownerflat",method = RequestMethod.GET, produces = "application/json")
	public String findAll3(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "owner_add_visitor";
	}

}
