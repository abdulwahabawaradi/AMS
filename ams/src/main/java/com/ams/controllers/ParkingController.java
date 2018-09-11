package com.ams.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ams.beans.ParkingBean;
import com.ams.service.FlatService;
import com.ams.service.ParkingService;
import com.ams.utils.RequestUtil;


@Controller
@RequestMapping("/parking")
public class ParkingController {

	@Autowired
	ParkingService parkingService;
	
	@Autowired
	FlatService flatService;
	
	
	@RequestMapping(value ="/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model ) {
		model.addAttribute("ParkingBeans",parkingService.findAll());
		return "view_parking";
	}
	
	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createUser(ModelMap model, HttpServletRequest request){
		System.out.println("In Controller");
		ParkingBean parkingBean = RequestUtil.createParkingRequest(request,"add");
		parkingService.add(parkingBean);
		return "add_parking";
	   }
	
	@RequestMapping(value = "/update/", method = RequestMethod.POST)
	public String updateComplain(ModelMap model, HttpServletRequest request){
		System.out.println("in update Maintenance controller");
		ParkingBean parkingBean = RequestUtil.updateParkingRequest(request, "update");
		parkingService.update(parkingBean);
		return "view_parking";
	}
	
	@RequestMapping(value = "/delete/", method = RequestMethod.POST)
	public ResponseEntity<?> delete( HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String parkingId = request.getParameter("parking_id");
		parkingService.delete(parkingId);
		System.out.println("Parking Id :"+parkingId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
		
	}
	@RequestMapping(value ="/getnew/", method = RequestMethod.GET, produces = "application/json")
	public String findAll1(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "add_parking";
	}
	
	@RequestMapping(value ="/getnew2/", method = RequestMethod.GET, produces = "application/json")
	public String findAll2(ModelMap model ) {
		model.addAttribute("flatBeans",flatService.findAll());
		return "owner_add_parking";
	}
	
	@RequestMapping(value ="/getowner/", method = RequestMethod.GET, produces = "application/json")
	public String findAll3(ModelMap model ) {
		model.addAttribute("ParkingBeans",parkingService.findAll());
		return "owner_view_parking";
	}
}
