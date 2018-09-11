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
import com.ams.beans.FundBean;
import com.ams.beans.GenericDropdownBean;
import com.ams.service.FlatService;
import com.ams.service.FundService;
import com.ams.service.UserService;
import com.ams.utils.RequestUtil;

@Controller
@RequestMapping("/fund")
public class FundController {
	@Autowired
	FundService fundService;

	@Autowired
	UserService userService;
	
	@Autowired
	FlatService flatService;

	@RequestMapping(value = "/get/", method = RequestMethod.GET, produces = "application/json")
	public String findAll(ModelMap model) {
		model.addAttribute("fundBeans", fundService.findAll());
		return "view_Fund";
	}

	@RequestMapping(value = "/find/{id}", method = RequestMethod.GET)
	public ResponseEntity<FundBean> findById(String id) {
		return new ResponseEntity<FundBean>(fundService.findById(id), HttpStatus.OK);
	}

	@RequestMapping(value = "/add/", method = RequestMethod.POST)
	public String createUser(ModelMap model, HttpServletRequest request) {
		System.out.println("In Controller");
		FundBean fundBean = RequestUtil.createFundRequest(request, "add");
		fundService.add(fundBean);
		return "add_Fund";
	}

	@RequestMapping(value = "/update/", method = RequestMethod.POST)
	public String updateFlat(ModelMap model, HttpServletRequest request) {
		System.out.println("in update Flat method");
		FundBean fundBean = RequestUtil.updateFundRequest(request, "update");
		System.out.println("Update Bean :" + fundBean);
		fundService.update(fundBean);
		return "view_fund";
	}

	@RequestMapping(value = "/delete/", method = RequestMethod.POST)
	public ResponseEntity<?> delete(HttpServletRequest request) {
		System.out.println("Delete maintenance controller");
		String fundId = request.getParameter("fund_id");
		fundService.delete(fundId);
		return new ResponseEntity<String>(HttpStatus.CREATED);
	}

	@RequestMapping(value = "/addNew/", method = RequestMethod.GET, produces = "application/json")
	public String addNew(ModelMap model) {
		model.addAttribute("userBeans", userService.findAll());
		model.addAttribute("flatBeans", flatService.findAll());
		return "add_Fund";
	}
	
	@RequestMapping(value ="/getFlat/")
	public @ResponseBody FlatBean getflatById(ModelMap model,HttpServletRequest request)
	throws NumberFormatException,IllegalAccessException,InvocationTargetException{	
	String flatId = request.getParameter("name");
	FlatBean flatBean= flatService.findEntityById1(Long.parseLong(flatId));
		return flatBean;
	}

}
